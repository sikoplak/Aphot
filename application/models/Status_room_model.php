<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Status_room_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'status_room';
    }

    public function dataTableColumnFilter(){
        return [
            "status_room.id",
            "status_room.name",
            "status_room.description",
            "status_room.created_on",  
        ];
    }

    public function createValidation($form) {
        $form->set_rules('name', 'Nama Status', 'required|is_unique[' . $this->table . '.name]');
    }

    public function updateValidation($form, $id) {
        $form->set_rules('name', 'Nama Status', 'required|edit_unique['.$this->table.'.name.' . $id . ']');
    }

}