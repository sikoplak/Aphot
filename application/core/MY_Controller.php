<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/* load the MX_Router class */
require APPPATH . "third_party/MX/Controller.php";

class MY_Controller extends MX_Controller
{	
	protected $libraries = ['template','form_validation','session','security','ion_auth'];
	protected $route;
	protected $model;
	protected $cleanInput = false;

	const SUCCESS_MESSAGE_SAVED = "Berhasil simpan data";
	const SUCCESS_MESSAGE_UPATED = "Berhasil edit data";
	const SUCCESS_MESSAGE_DELETED = "Berhasil hapus data"; 
	
	const FAILED_MESSAGE_SAVED = "Gagal simpan data";
	const FAILED_MESSAGE_UPATED = "Gagal edit data";
	const FAILED_MESSAGE_DELETED = "Gagal hapus data"; 


	public function __construct() 
	{
		parent::__construct();
		if($this->cleanInput) $_POST = array_map('strip_tags', $_POST); 
		if($this->cleanInput) $_GET = array_map('strip_tags', $_GET); 
		$this->_hmvc_fixes();
		$this->db = $this->load->database('default', TRUE);
        $this->load->library($this->libraries);
        $this->template->set_template('layouts/base');
		if (!$this->ion_auth->logged_in()) redirect('auth');
	}

	public function index(){
		checkPermission($this->route,"view");
		$this->template->content->view($this->route.'/index');
        $this->template->publish();
	}

	public function create(){
		checkPermission($this->route,"create");
		$this->template->content->view($this->route.'/create');
        $this->template->publish();
	}

	public function store(){
		try{
			checkPermission($this->route,"create");
			$this->load->model($this->model, "mdl");
			$this->mdl->createValidation($this->form_validation);
			if ($this->form_validation->run() == TRUE) {
				$post = $this->input->post(NULL, TRUE);
				$mapper = $this->beforeCreate($post);
				$insert_id = $this->mdl->store($mapper);
				$this->afterCreate($post, $insert_id);
				$this->session->set_flashdata('success', self::SUCCESS_MESSAGE_SAVED);
				redirect($this->route.'/show/'.$insert_id);
			}else{
				$this->create();
			}
		}catch(Exception $e){
			$this->session->set_flashdata('danger',  self::FAILED_MESSAGE_SAVED);
			redirect($this->route);
		}
	}

	public function update(){
		try{
			checkPermission($this->route,"update");
			$id = $this->input->post("id");
			$this->load->model($this->model, "mdl");
			$this->mdl->updateValidation($this->form_validation,$id);
			if ($this->form_validation->run() == TRUE) {
				$post = $this->input->post(NULL, TRUE);
				$oldData = $this->mdl->find($id);
				$mapper = $this->beforeUpdate($post, $oldData, $id);
				unset($post["id"]);
				$update_id = $this->mdl->update($mapper, $id);
				$this->afterUpdate($post, $update_id);
				$this->session->set_flashdata('success', self::SUCCESS_MESSAGE_UPATED);
				redirect($this->route.'/show/'.$id);
			}else{
				$this->edit($id);
			}
		}catch(Exception $e){
			$this->session->set_flashdata('danger',  self::FAILED_MESSAGE_UPATED);
			redirect($this->route);
		}
	}

	public function show($id){
		checkPermission($this->route,"view");
		$this->load->model($this->model,"mdl");
		$data = $this->mdl->find($id);
		$items = [
			"data"=>$data,
			"links"=>[
				"back"=>base_url($this->route),
				"create"=>base_url($this->route."/create"),
				"edit"=>base_url($this->route."/edit/".$id),
				"delete"=>base_url($this->route."/delete/".$id),
			]
		];
		if(is_null($data)) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
		$this->template->content->view($this->route."/show",$items);
        $this->template->publish();
	}

	public function edit($id){
		checkPermission($this->route,"update");
		$this->load->model($this->model,"mdl");
		$data = $this->mdl->find($id);
		$items = ["data"=>$data];
		if(is_null($data)) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
		$this->template->content->view($this->route."/edit",$items);
        $this->template->publish();
	}

	public function delete($id){
		checkPermission($this->route,"delete");
		try{
			$this->load->model($this->model,'mdl');
			$response = $this->mdl->delete($id,"id");
			$this->session->set_flashdata('success', self::SUCCESS_MESSAGE_DELETED);
			redirect($this->route);
		}catch(Exception $e){
			$this->session->set_flashdata('danger',  self::FAILED_MESSAGE_DELETED);
			redirect($this->route);
		}
	}

	protected function beforeCreate(array $data){ return $data; }

	protected function afterCreate($post, $insert_id){}

	protected function beforeUpdate(array $data, $oldData,  $id){ return $data; }

	protected function afterUpdate($post, $update_id){}

	protected function beforeDelete($id){}

	protected function afterDelete($data){}
	
	private function _hmvc_fixes()
	{		
		//fix callback form_validation		
		//https://bitbucket.org/wiredesignz/codeigniter-modular-extensions-hmvc
		$this->load->library('form_validation');
		$this->form_validation->CI =& $this;
	}

}

/* End of file MY_Controller.php */
/* Location: ./application/core/MY_Controller.php */
