<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class MY_Model extends CI_Model {

    protected $table;

    public function __construct() {
        parent::__construct();
        $this->db = $this->load->database('default', TRUE);
    }

    public function dataTable($request) {
        $search = $request->getSearch();
        $columnDef = $request->getSColumns();
        $sort = array($request->getSortColumnIndex(), $request->getSortDirection());
        $limit = $request->getDisplayLength();
        $offset = $request->getDisplayStart();
        $columnData = $this->dataTableColumnSelect();
        $total_data = $this->countAll();
        $total_filtered = $this->dataTableQuery($columnData, $search, $sort, $limit, $offset, TRUE);
        $data = $this->dataTableQuery($columnData, $search, $sort, $limit, $offset, FALSE);
        return array(
            "sEcho" => $request->getEcho(),
            "iTotalRecords" => intval($total_data),
            "iTotalDisplayRecords" => intval($total_filtered),
            "aaData" => $data,
            "sort" => $sort
        );
    }

    public function dataTableQuery($columnData, $search = null, $sort = null, $limit = 10, $offset = 0, $count = FALSE) {
        $column = $this->dataTableColumnFilter();
        $this->db->select($columnData);
        $this->db->distinct();
        if ($search) {
            $this->onWhere($this->db);
            $i = 1;
            $condition = null;
            foreach ($column as $c) {
                if ($i == 1) {
                    $condition .= " " . $c . " LIKE '%" . $search . "%' ";
                } else {
                    $condition .= " OR " . $c . " LIKE '%" . $search . "%' ";
                }
                $i++;
            }
            $where = " (" . $condition . ")";
            $this->db->where($where);
        } else {
            $this->onWhere($this->db);
        }
        $this->onJoin($this->db);
        $this->onGroupBy($this->db);
        $this->db->order_by($column[$sort[0]], $sort[1]);
        if ($count) {
            return $this->db->get($this->table)->num_rows();
        } else {
            $this->db->limit($limit, $offset);
            return $this->db->get($this->table)->result();
        }
    }

    public function countAll() {
        $column = $this->column();
        $this->onWhere($this->db);
        $this->onJoin($this->db);
        $this->onGroupBy($this->db);
        $this->db->distinct();
        $this->db->select($column);
        return $this->db->get($this->table)->num_rows();
    }

    public function getAll() {
        $column = $this->column();
        $this->onWhere($this->db);
        $this->onJoin($this->db);
        $this->onGroupBy($this->db);
        $this->db->distinct();
        $this->db->select($column);
        return $this->db->get($this->table)->result();
    }

    public function find($value, $primary = "id") {
        $column = $this->column();
        $this->onJoin($this->db);
        $this->db->where($this->table . "." . $primary, $value);
        $this->db->limit(1);
        $this->db->select($column);
        return $this->db->get($this->table)->row();
    }

    public function store(array $data) {
        if($this->isTimeStamp()){
            $data["created_on"] = date("Y-m-d H:i:s");
            $data["created_by"] = $this->session->userdata('user_id');
        }
        $this->db->insert($this->table, $data);
        $insert_id = $this->db->insert_id();
        $newValue = $this->find($insert_id);
        audit([NULL],  $newValue, "CREATE", $insert_id, $this->table);
        return $insert_id;
    }

    public function update(array $data, $value, $primary = "id") {
        $oldData = $this->find($value);
        if($this->isTimeStamp()){
            $data["created_on"] = date("Y-m-d H:i:s");
            $data["created_by"] = $this->session->userdata('user_id');
        }
        $this->db->where($this->table . "." . $primary, $value);
        $this->db->limit(1);
        $this->db->update($this->table, $data);
        audit($oldData, $data, "UPDATE", $value, $this->table);
        return $value;
    }

    public function delete($value, $primary = "id") {
        $oldData = $this->find($value);
        if($this->isTimeStamp()){
             $data = array();
             $data["deleted_on"] = date("Y-m-d H:i:s");
             $data["deleted_by"] = $this->session->userdata('user_id');
             $this->db->where($this->table.".".$primary,$value);
             $this->db->limit(1);
             $this->db->update($this->table, $data);
             $updateValue = $this->find($value);
             audit($oldData, $updateValue, "DELETE", $value, $this->table);
             return TRUE;
        }else{  
            audit($oldData, $updateValue, "DELETE", $value, $this->table);
            $this->db->where($this->table . "." . $primary, $value);
            return $this->db->delete($this->table);
        }
       
    }

    public function dataTableColumnSelect() {
        return $this->column();
    }

    public function dataTableColumnFilter() {
        return $this->column();
    }

    public function toSelectItem($name, $id) {
        $db = $this->db;
        if($this->isTimeStamp()){
            $db->where($this->table.".deleted_on", null);
            $db->where($this->table.".deleted_by", null);
        }
        $db->order_by($name, "ASC");
        $result = $db->get($this->table)->result_array(); 
        $items = array();
        foreach($result as $r) { 
            $items[$r[$id]] = $r[$name]; 
        } 
        $items[''] = 'Pilih item...'; 
        return $items; 
    }

    protected function column($alias = true) {
        $result = array();
        $columnInfo = "DESC " . $this->table;
        $data = $this->db->query($columnInfo)->result_array();
        foreach ($data as $row) {
            if ($alias) {
                $result[] = strtolower($this->table . "." . $row["Field"] . ' as ' . $this->table . "_" . $row["Field"]);
            } else {
                $result[] = strtolower($row["Field"]);
            }
        }
        $relations = $this->belongsTo();
        if (!is_null($relations)) {
            foreach ($relations as $relation) {
                $data2 = $this->db->query('DESC ' . $relation['target'])->result_array();
                foreach ($data2 as $row) {
                    $result[] = strtolower($relation['target'] . "." . $row["Field"] . ' as ' . $relation['target'] . "_" . $row["Field"]);
                }
            }
        }
        return $result;
    }

    protected function createValidation($form) {}

    protected function updateValidation($form, $id) {}

    protected function onWhere($db) {
        if($this->isTimeStamp()){
            $db->where($this->table.".deleted_on", null);
            $db->where($this->table.".deleted_by", null);
        }
    }

    protected function belongsTo() { return []; }

    protected function belongsToMany() { return []; }

    protected function onGroupBy($db) {}

    protected function onJoin($db) {
        $relation = $this->belongsTo();
        if (!is_null($relation)) {
            foreach ($relation as $row) {
                $db->join($row["target"], $row["target"] . ".id = " . $this->table . "." . $row["foreign_key"], 'LEFT');
            }
        }
    }

    private function isTimeStamp(){
        $query = $this->db->query("DESC ".$this->table)->result_array();
        foreach($query as $row){
            if(isset($row["Field"])){
                if($row["Field"] == "deleted_on"){
                    return TRUE;
                    break;
                }
            }
        }
        return FALSE;
    }
}
