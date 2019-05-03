<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Discount extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->route = "web/discount";
        $this->model = "Discount_model";
        $this->template->title = "Diskon";
        $this->template->javascript->add(site_url('assets/app/js/discount.js'));
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