<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Role_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'groups';
    }

    public function dataTableColumnFilter(){
        return [
            "groups.id",
            "groups.name",
            "groups.description",
            "groups.created_on" 
        ];
    }

    public function createValidation($form) {
        $form->set_rules('name', 'Nama', 'required|is_unique[groups.name]');
        $form->set_rules('description', 'Deskripsi', 'required');
        $form->set_rules('routes[]', 'Hak Akses', 'required');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('name', 'Nama', 'required|edit_unique[groups.name.' . $id . ']');
        $form->set_rules('description', 'Deskripsi', 'required');
        $form->set_rules('routes[]', 'Hak Akses', 'required');
    }

    public function store(array $data){
        $this->db->insert($this->table, $data);
        $insert_id =  $this->db->insert_id();
        audit([NULL],  $data, "CREATE", $insert_id, $this->table);
        return $insert_id;
    }

    public function syncPermission($role_id, $post){
        $this->db->where("group_id",$role_id);
        $this->db->delete("permissions");
        if(isset($post['routes'])){

            for($i = 0; $i < count($post['routes']); $i++){
                $route_id = $post['routes'][$i];
                $group_id = $role_id;
                $view = isset($post['can_view'.$route_id]) ? 1 : 0;
                $create = isset($post['can_add'.$route_id]) ? 1 : 0;
                $edit = isset($post['can_edit'.$route_id]) ? 1 : 0;
                $delete = isset($post['can_delete'.$route_id]) ? 1 : 0;
                $this->db->insert("permissions",[
                    "group_id"=>$group_id,
                    "route_id"=>$route_id,
                    "can_create"=>$create,
                    "can_update"=>$edit,
                    "can_view"=>$view,
                    "can_delete"=>$delete
                ]);
            }

            $this->db->where("protected",1);
            $protected = $this->db->get("routes")->result();
            foreach($protected as $p){
                $this->db->insert("permissions",[
                    "group_id"=>$group_id,
                    "route_id"=>$p->id,
                    "can_create"=>1,
                    "can_update"=>1,
                    "can_view"=>1,
                    "can_delete"=>1
                ]);
            }

        }
    }

    public function permissionSelected($role_id){
        $this->db->where("permissions.group_id",$role_id);
        return $this->db->get("permissions")->result();
    }
}