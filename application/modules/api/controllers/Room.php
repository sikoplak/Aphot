<?php defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/API_controller.php';

class Room extends API_Controller{

	public function __construct(){
		parent::__construct();
		$this->model = "Room_model";		
	}

}