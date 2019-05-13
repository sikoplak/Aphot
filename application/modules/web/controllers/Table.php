<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Table extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->cleanInput = true;
        $this->route = "web/table";
        $this->model = "Table_model";
        $this->template->title = "Meja Restoran";
        $this->template->javascript->add(site_url('assets/app/js/table.js'));
    }

   
    protected function beforeCreate(array $data){ 
        $data["is_available"] = !is_null($data["is_available"]) ? 1 : 0;
        $data["is_booked"] = !is_null($data["is_booked"]) ? 1 : 0;
        return $data; 
    }

    protected function beforeUpdate(array $data, $oldData, $id){ 
        $data["is_available"] = !is_null($data["is_available"]) ? 1 : 0;
        $data["is_booked"] = !is_null($data["is_booked"]) ? 1 : 0;
        return $data;
    }


}