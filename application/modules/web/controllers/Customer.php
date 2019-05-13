<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Customer extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->cleanInput = true;
        $this->route = "web/customer";
        $this->model = "Customer_model";
        $this->template->title = "Pelanggan";
        $this->template->javascript->add(site_url('assets/app/js/customer.js'));
    }

    

}