<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Room_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'rooms';
    }

    public function dataTableColumnFilter(){
        return [
            "rooms.id",
            "rooms.number",
            "categories_room.name",
            "status_room.name",
            "rooms.capacity",
            "rooms.occupant",
            "rooms.created_on",  
        ];
    }

    public function createValidation($form) {
        $form->set_rules('number', 'Nomor Kamar', 'required|is_unique[' . $this->table . '.number]');
        $form->set_rules('category_id', 'Kategori Kamar', 'required');
        $form->set_rules('status_id', 'Status Kamar', 'required');
        $form->set_rules('capacity', 'Kapasitas', 'required');
        $form->set_rules('occupant', 'Jumlah Penghuni', 'required');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('number', 'Nomor Kamar', 'required|edit_unique['.$this->table.'.number.' . $id . ']');
        $form->set_rules('category_id', 'Kategori Kamar', 'required');
        $form->set_rules('status_id', 'Status Kamar', 'required');
        $form->set_rules('capacity', 'Kapasitas', 'required');
        $form->set_rules('occupant', 'Jumlah Penghuni', 'required');
    }

    public function get_category($id){
        $this->db->where("category_id", $id);
        $this->db->where($this->table.".deleted_on", null);
        $this->db->where($this->table.".deleted_by", null);
        $this->db->order_by("number", "ASC");
        return $this->db->get($this->table)->result();
    }

    protected function belongsTo(){ 
        return array(
            [
                "target"=>"categories_room",
                "foreign_key"=>"category_id"
            ],
            [
                "target"=>"status_room",
                "foreign_key"=>"status_id"
            ]
        );
    }

}