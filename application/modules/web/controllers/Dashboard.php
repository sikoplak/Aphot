<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller {

    public function __construct() {
		parent::__construct();
        $this->template->title = "Dashboard";
    }
    
    public function index() {
        $this->template->javascript->add(site_url('assets/dist/js/pages/dashboard.js'));
        $this->template->javascript->add(site_url('assets/dist/js/demo.js'));
        $this->template->content->view('dashboard/index');
        $this->template->publish();
    }

}
