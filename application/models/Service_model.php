<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Service_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'services';
    }

    public function dataTableColumnFilter(){
        return [
            "services.id",
            "services.name",
            "services.cost",
            "services.description",
            "services.created_on",  
        ];
    }

    public function createValidation($form) {
        $form->set_rules('name', 'Nama Servis', 'required|is_unique[' . $this->table . '.name]');
        $form->set_rules('cost', 'Harga', 'required');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('name', 'Nama Servis', 'required|edit_unique['.$this->table.'.name.' . $id . ']');
        $form->set_rules('cost', 'Harga', 'required');
    }

}