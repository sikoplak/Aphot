<?php defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/API_controller.php';

class Dashboard extends API_Controller{

	public function __construct(){
		parent::__construct();
		$this->model = null;		
    }
    
    public function dashboard_utama_post(){
        $year = date("Y");
        $first_date = date('Y-m-01');
        $last_date = date('Y-12-31');
        $this->load->model("Report_model", "report");
        $this->load->model("Customer_model", "customer");
        $result = array();
        $result["reservasi_penginapan"] = $this->report->countInvoice($first_date, $last_date, 0);
        $result["restoran"] = $this->report->countInvoice($first_date, $last_date, 1);
        $result["kamar"] = $this->report->countRoom();
        $result["meja"] = $this->report->countTable();
        $result["tamu"] = $this->customer->countAll();
        $result["transaksi"] = $this->report->sumTransaction($first_date, $last_date);
        $result["room_chart"] = $this->report->getByRoomCategory($first_date, $last_date);
        $result["menu_chart"] = $this->report->getByMenu($first_date, $last_date);
        $result["bar_chart"] = array(
            "penginapan"=>$this->report->getByPeriodSum(0, $year),
            "restoran"=>$this->report->getByPeriodSum(1, $year)
        );
        $this->set_response($result, REST_Controller::HTTP_OK);
    }

}