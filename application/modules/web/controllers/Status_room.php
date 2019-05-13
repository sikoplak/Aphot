<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Status_room extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->cleanInput = true;
        $this->route = "web/status_room";
        $this->model = "Status_room_model";
        $this->template->title = "Status Kamar";
        $this->template->javascript->add(site_url('assets/app/js/status_room.js'));
    }

   

}