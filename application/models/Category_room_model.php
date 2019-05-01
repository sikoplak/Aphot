<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Category_room_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'categories_room';
    }

    public function dataTableColumnFilter(){
        return [
            "categories_room.id",
            "categories_room.name",
            "categories_room.cost",
            "categories_room.description",
            "categories_room.created_on",  
        ];
    }

    public function createValidation($form) {
        $form->set_rules('name', 'Nama Kategori', 'required|is_unique[' . $this->table . '.name]');
        $form->set_rules('cost', 'Harga', 'required');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('name', 'Nama Kategori', 'required|edit_unique['.$this->table.'.name.' . $id . ']');
        $form->set_rules('cost', 'Harga', 'required');
    }

}