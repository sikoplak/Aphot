<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '../vendor/autoload.php';
require APPPATH . '/libraries/REST_Controller.php';

use \Firebase\JWT\JWT;

/**
 * Description of API_Controller
 *
 * @author Sandy
 */
class API_Controller extends REST_Controller {

    protected $model;
    protected $libraries = ['ion_auth'];

    public function __construct($config = 'rest') {
        parent::__construct($config);
        $_POST = array_map('strip_tags', $_POST);
        $this->db = $this->load->database('default', TRUE);
        $this->load->library($this->libraries);
        $this->cektoken();
    }

    public function cektoken() {
        $jwt = $this->input->get_request_header('Authorization');
        try {
            $decode = JWT::decode($jwt, APP_KEY, array('HS256'));
            $user = $this->ion_auth->user()->row();
            if ($user->username == $decode->username) {
                return true;
            }
        } catch (Exception $e) {
            exit(json_encode(array('status' => '0', 'message' => 'Invalid Token',)));
        }
    }

    public function datatable_post(){
        try {
            $this->load->model($this->model,'mdl');
            $input = $this->input->post(NULL, TRUE);
            $this->load->library('Datatable');
            $request = new Datatable();
            $request->init($input);
            $response = $this->mdl->dataTable($request);
            $this->set_response($response, REST_Controller::HTTP_OK);
        } catch (Exception $ex) {
            $this->set_response($ex, REST_Controller::HTTP_FORBIDDEN);
        }
    }

    public function delete_post(){
        try {
            $this->load->model($this->model,'mdl');
            $id = $this->input->post("id");
            $status = $this->input->post("status");
            $response = $this->mdl->delete($id,'id');
            $this->set_response($response, REST_Controller::HTTP_OK);
        } catch (Exception $ex) {
            $this->set_response($ex, REST_Controller::HTTP_FORBIDDEN);
        }
    }

}
