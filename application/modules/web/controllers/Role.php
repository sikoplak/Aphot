<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Role extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->cleanInput = true;
        $this->route = "web/role";
        $this->model = "Role_model";
        $this->template->title = "Akses Pengguna";
        $this->template->javascript->add(site_url('assets/app/js/role.js'));
    }

    public function store(){
		try{
            checkPermission($this->route,"create");
			$this->load->model($this->model, "mdl");
			$this->mdl->createValidation($this->form_validation);
			if ($this->form_validation->run() == TRUE) {
                $data = [
                    "name"=>$this->input->post("name"),
                    "description"=>$this->input->post("description"),
                    "created_on"=>date("Y-m-d H:i:s"),
                    "created_by"=>$this->session->userdata('user_id')
                ];
                $role_id = $this->mdl->store($data);
                $post = $this->input->post(NULL, TRUE);
                $this->mdl->syncPermission($role_id, $post);
                $this->session->set_flashdata('success', self::SUCCESS_MESSAGE_SAVED);
				redirect($this->route.'/show/'.$role_id);
			}else{
				$this->create();
			}
		}catch(Exception $e){
			$this->session->set_flashdata('error',  self::FAILED_MESSAGE_SAVED);
			redirect($this->route);
		}
    }

    public function show($id){
        checkPermission($this->route,"view");
        $this->load->model($this->model,"mdl");
        $data = $this->mdl->find($id);
        $items = [
            "data"=>$data,
            "permissions"=>$this->mdl->permissionSelected($id),
            "links"=>[
                "back"=>base_url($this->route),
                "create"=>base_url($this->route."/create"),
                "edit"=>base_url($this->route."/edit/".$id),
                "delete"=>base_url($this->route."/delete/".$id),
            ]
        ];
        $this->template->content->view($this->route."/show",$items);
        $this->template->publish();
    }

    public function edit($id){
        checkPermission($this->route,"update");
		$this->load->model($this->model,"mdl");
		$data = $this->mdl->find($id);
		$items = [
            "data"=>$data,
            "permissions"=>$this->mdl->permissionSelected($id),
        ];
		$this->template->content->view($this->route."/edit",$items);
        $this->template->publish();
    }

    public function update(){
		try{
            checkPermission($this->route,"update");
			$id = $this->input->post("id");
			$this->load->model($this->model, "mdl");
			$this->mdl->updateValidation($this->form_validation,$id);
			if ($this->form_validation->run() == TRUE) {
                $data = [
                    "name"=>$this->input->post("name"),
                    "description"=>$this->input->post("description"),
                    "created_on"=>date("Y-m-d H:i:s"),
                    "created_by"=>$this->session->userdata('user_id')
                ];
                $post = $this->input->post(NULL, TRUE);
			    $this->mdl->update($data, $id);
                $this->mdl->syncPermission($id, $post);
				$this->session->set_flashdata('success', self::SUCCESS_MESSAGE_UPATED);
				redirect($this->route.'/show/'.$id);
			}else{
				$this->edit($id);
			}
		}catch(Exception $e){
			$this->session->set_flashdata('error',  self::FAILED_MESSAGE_UPATED);
			redirect($this->route);
		}
	}
    

}