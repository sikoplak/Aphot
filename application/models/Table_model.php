<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Table_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'tables';
    }

    public function dataTableColumnFilter(){
        return [
            "tables.id",
            "tables.number",
            "tables.is_available",
            "tables.is_booked",
            "tables.created_on",  
        ];
    }

    public function createValidation($form) {
        $form->set_rules('number', 'Nomor Meja', 'required|is_unique[' . $this->table . '.number]');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('number', 'Nomor Meja', 'required|edit_unique['.$this->table.'.number.' . $id . ']');
    }

}