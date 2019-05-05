<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Menu_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'foods';
    }

    public function dataTableColumnFilter(){
        return [
            "foods.id",
            "categories_food.name",
            "foods.name",
            "foods.cost",
            "foods.description",
            "foods.created_on",  
        ];
    }

    public function createValidation($form) {
        $form->set_rules('name', 'Nama Menu', 'required|is_unique[' . $this->table . '.name]');
        $form->set_rules('category_id', 'Kategori Menu', 'required');
        $form->set_rules('cost', 'Harga Menu', 'required');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('name', 'Nama Menu', 'required|edit_unique['.$this->table.'.name.' . $id . ']');
        $form->set_rules('category_id', 'Kategori Menu', 'required');
        $form->set_rules('cost', 'Harga Menu', 'required');
    }

    protected function belongsTo(){ 
        return array(
            [
                "target"=>"categories_food",
                "foreign_key"=>"category_id"
            ],
        );
    }

}