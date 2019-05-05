<?php defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/API_controller.php';

class Customer extends API_Controller{

	public function __construct(){
		parent::__construct();
		$this->model = "Customer_model";		
	}

	public function customer_select2_post(){
		$this->load->model($this->model, "mdl");
		$search = $this->input->post("q");
		$response = $this->mdl->customer_select2($search);
		$this->set_response($response, REST_Controller::HTTP_OK);
	}

}