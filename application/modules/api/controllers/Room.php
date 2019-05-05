<?php defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/API_controller.php';

class Room extends API_Controller{

	public function __construct(){
		parent::__construct();
		$this->model = "Room_model";		
	}

	public function get_category_post(){
		$this->load->model($this->model, "mdl");
		$id = $this->input->post("id");
		$response = $this->mdl->get_category($id);
		$this->set_response($response, REST_Controller::HTTP_OK);
	}

}