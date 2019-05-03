<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Extra_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'extra';
    }

    public function dataTableColumnFilter(){
        return [
            "extra.id",
            "extra.name",
            "extra.cost",
            "extra.description",
            "extra.created_on",  
        ];
    }

    public function createValidation($form) {
        $form->set_rules('name', 'Nama Extra', 'required|is_unique[' . $this->table . '.name]');
        $form->set_rules('cost', 'Harga', 'required');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('name', 'Nama Extra', 'required|edit_unique['.$this->table.'.name.' . $id . ']');
        $form->set_rules('cost', 'Harga', 'required');
    }

}