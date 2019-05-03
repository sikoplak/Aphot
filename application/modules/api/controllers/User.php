<?php defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/API_controller.php';

class User extends API_Controller{

	public function __construct(){
		parent::__construct();
		$this->model = "User_model";		
	}

	public function upload_image_post(){
		try {
            $response = cropAndUpload("uploads");
            if (file_exists(FCPATH . '' . $response["path"])) {
                $mdl = $this->load->model($this->model, "user");
                $this->user->updateImage($response["path"]);
            }
            $this->set_response($response, REST_Controller::HTTP_OK);
        } catch (Exception $e) {
            $this->set_response($e, REST_Controller::HTTP_FORBIDDEN);
        }
	}

}