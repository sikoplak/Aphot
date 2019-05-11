<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Report extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->route = "web/report";
        $this->model = "Report_model";
        $this->template->title = "Laporan";
        $this->template->javascript->add(site_url('assets/app/js/report.js'));
    }

    public function index(){
        checkPermission($this->route,"view");
        $items = [
            "first_date"=>date('Y-m-01'),
            "last_date"=>date('Y-m-d', strtotime('last day of this month'))
        ];
		$this->template->content->view($this->route.'/index', $items);
        $this->template->publish();
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

    public function report_reservation($param){
       checkPermission($this->route,"view");
       $params = explode("_", $param);
       $first = $params[0];
       $last = $params[1];
       $this->load->model($this->model, "mdl");
       $items = [
            "data"=>$this->mdl->reservation($first, $last),
            "first"=>$first,
            "last"=>$last
       ];
       $this->load->view("report/report_reservation", $items);
    }

    public function report_resto($param){
        checkPermission($this->route,"view");
        $params = explode("_", $param);
        $first = $params[0];
        $last = $params[1];
        $this->load->model($this->model, "mdl");
        $items = [
             "data"=>$this->mdl->resto($first, $last),
             "first"=>$first,
             "last"=>$last
        ];
        $this->load->view("report/report_resto", $items);
    }

}