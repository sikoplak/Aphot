<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Tax_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'taxes';
    }

    public function dataTableColumnFilter(){
        return [
            "taxes.id",
            "taxes.name",
            "taxes.cost",
            "taxes.description",
            "taxes.active",
            "taxes.created_on",  
        ];
    }

    public function createValidation($form) {
        $form->set_rules('name', 'Nama Pajak', 'required|is_unique[' . $this->table . '.name]');
        $form->set_rules('cost', 'Harga', 'required');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('name', 'Nama Pajak', 'required|edit_unique['.$this->table.'.name.' . $id . ']');
        $form->set_rules('cost', 'Harga', 'required');
    }

}