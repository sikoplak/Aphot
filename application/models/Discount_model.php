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
            "discounts.type",
            "discounts.description",
            "discounts.active",
            "discounts.created_on",  
        ];
    }

    public function createValidation($form) {
        $form->set_rules('name', 'Nama Diskon', 'required');
        $form->set_rules('cost', 'Nominal', 'required');
        $form->set_rules('type', 'Transaksi', 'required');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('name', 'Nama Diskon', 'required');
        $form->set_rules('cost', 'Nominal', 'required');
        $form->set_rules('type', 'Transaksi', 'required');
    }

}