<?php defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/API_controller.php';

class Resto extends API_Controller{

	public function __construct(){
		parent::__construct();
		$this->model = "Resto_model";		
	}

}