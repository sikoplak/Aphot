<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Category_food_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'categories_food';
    }

    public function dataTableColumnFilter(){
        return [
            "categories_food.id",
            "categories_food.name",
            "categories_food.description",
            "categories_food.created_on",  
        ];
    }

    public function createValidation($form) {
        $form->set_rules('name', 'Nama Kategori', 'required|is_unique[' . $this->table . '.name]');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('name', 'Nama Kategori', 'required|edit_unique['.$this->table.'.name.' . $id . ']');
    }

}