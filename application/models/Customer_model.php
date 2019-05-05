<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Customer_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'customers';
    }

    public function dataTableColumnFilter(){
        return [
            "customers.id",
            "customers.identity_type",
            "customers.identity_number",
            "customers.name",
            "customers.phone",
            "customers.email",
            "customers.address",
            "customers.created_on",  
        ];
    }

    public function createValidation($form) {
        $form->set_rules('name', 'Nama Pelanggan', 'required');
        $form->set_rules('phone', 'Nomor Telepon', 'required');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('name', 'Nama Pelanggan', 'required');
        $form->set_rules('phone', 'Nomor Telepon', 'required');
    }

    public function customer_select2($search = null){
        $this->db->select("id, name as text");
        $this->db->limit(20, 0);
        $this->db->where("deleted_on", null);
        $this->db->where("deleted_by", null);
        if($search){
            $this->db->like("name", $search);
        }
        return $this->db->get($this->table)->result_array();
    }

}