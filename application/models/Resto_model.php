<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Resto_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'invoices';
    }

    public function dataTableColumnSelect() {
        $column = $this->column();
        $column[] = "(SELECT SUM(total) FROM invoice_food WHERE invoice_id = invoices.id) AS subtotal";
        return $column;
    }

    public function dataTableColumnFilter(){
        return [
            "invoices.id",
            "invoices.invoice_number",
            "invoices.invoice_date",
            "customers.name",
            "invoices.payment_type",
            "invoices.due",
            "invoices.discount",
            "invoices.tax",
            "invoices.is_draft",
            "invoices.due",
            "invoices.created_on",  
        ];
    }

    protected function belongsTo(){ 
        return array(
            [
                "target"=>"customers",
                "foreign_key"=>"customer_id"
            ],
        );
    }

    protected function onWhere($db) {
        parent::onWhere($db);
        $db->where($this->table.".type", 1);
    }

    public function reserved($number, $table_id){
        $data = array(
            "invoice_number"=>$number,
            "invoice_date"=>date("Y-m-d"),
            "type"=>1,
            "is_draft"=>1,
            "check_in_on"=>date("Y-m-d H:i:s"),
            "created_on"=>date("Y-m-d H:i:s"),
            "created_by"=>$this->session->userdata('user_id')
        );
        $this->db->insert($this->table, $data);
        $invoice_id = $this->db->insert_id();

        $this->db->insert("invoice_table", ["invoice_id"=>$invoice_id, "table_id"=>$table_id]);

        $this->db->where("id", $table_id);
        $this->db->update("tables", ["is_booked"=>1, "is_available"=>0]);

        return $invoice_id;
    }
    
    public function delete($value, $primary = "id") {
        $oldData = $this->find($value);
        $data = array();
        $data["deleted_on"] = date("Y-m-d H:i:s");
        $data["deleted_by"] = $this->session->userdata('user_id');
        $this->db->where($this->table.".".$primary,$value);
        $this->db->limit(1);
        $this->db->update($this->table, $data);
        $updateValue = $this->find($value);

        if(is_null($updateValue->invoices_payment_type)){
            $rooms = $this->getDetailTable($value);
            foreach($rooms as $row){
                $this->db->where("id", $row->table_id);
                $this->db->limit(1);
                $this->db->update("tables", ["is_booked"=>0, "is_available"=>1]);
            }
        }

        audit($oldData, $updateValue, "DELETE", $value, $this->table);
        return TRUE;
    }

    public function getDetailTable($id, $isArray = false){
        $this->db->where("invoice_table.invoice_id", $id);
        $this->db->join('tables','tables.id = invoice_table.table_id');
        $result = $this->db->get("invoice_table")->result();
        if($isArray){
            $array = array();
            foreach($result as $row){
                $array[] = $row->table_id;
            }
            return $array;
        }else{
            return $result;
        }
    }

    public function getDetailOrder($id){
        $this->db->where("invoice_food.invoice_id", $id);
        $this->db->join('foods','foods.id = invoice_food.food_id');
        return $this->db->get("invoice_food")->result();
    }

   
}