<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Resto extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->route = "web/resto";
        $this->model = "Resto_model";
        $this->template->title = "Restoran";
        $this->template->javascript->add(site_url('assets/app/js/resto.js'));
    }

    

}