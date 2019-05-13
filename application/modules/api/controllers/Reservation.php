<?php defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/API_controller.php';

class Reservation extends API_Controller{

	public function __construct(){
		parent::__construct();
		$this->model = "Invoice_model";		
	}

	public function checkout_post(){
		$_POST = array_map('strip_tags', $_POST);
		$this->load->model($this->model, "mdl");
		$post = $this->input->post(NULL, TRUE);
		$result = $this->mdl->checkOut($post);
		$this->set_response($result, REST_Controller::HTTP_OK);
	}

}