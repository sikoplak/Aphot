<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Tax extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->cleanInput = true;
        $this->route = "web/tax";
        $this->model = "Tax_model";
        $this->template->title = "Pajak";
        $this->template->javascript->add(site_url('assets/app/js/tax.js'));
    }

   
    protected function beforeCreate(array $data){ 
        $data["active"] = !is_null($data["active"]) ? 1 : 0;
        return $data; 
    }

    protected function beforeUpdate(array $data, $oldData, $id){ 
        $data["active"] = !is_null($data["active"]) ? 1 : 0;
        return $data;
    }


}