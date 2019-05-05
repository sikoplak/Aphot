<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Audit extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->route = "web/audit";
        $this->model = "Audit_model";
        $this->template->title = "Audit Trail";
        $this->template->javascript->add(site_url('assets/app/js/audit.js'));
    }

    public function create(){
        show_404();
    }

    public function show($id){
        show_404();
    }

    public function edit($id){
        show_404();
    }

    public function delete($id){
        show_404();
    }

}