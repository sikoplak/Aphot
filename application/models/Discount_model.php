<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Discount_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'discounts';
    }

    public function dataTableColumnFilter(){
        return [
            "discounts.id",
            "discounts.name",
            "discounts.cost",
            "discounts.description",
            "discounts.active",
            "discounts.created_on",  
        ];
    }

    public function createValidation($form) {
        $form->set_rules('name', 'Nama Diskon', 'required|is_unique[' . $this->table . '.name]');
        $form->set_rules('cost', 'Harga', 'required');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('name', 'Nama Diskon', 'required|edit_unique['.$this->table.'.name.' . $id . ']');
        $form->set_rules('cost', 'Harga', 'required');
    }

}