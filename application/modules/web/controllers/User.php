<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class User extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->route = "web/user";
        $this->model = "User_model";
        $this->template->title = "Pengguna";
        $this->template->javascript->add(site_url('assets/app/js/user.js'));
        $this->load->model("Role_model", "role");
    }

    public function create(){
		checkPermission($this->route,"create");
		$items =[
			"roles"=>$this->role->getAll(),
        ];
		$this->template->content->view($this->route.'/create', $items);
        $this->template->publish();
    }

    public function store(){
		try{
            checkPermission($this->route,"create");
            $this->load->model($this->model, "mdl");
			$this->mdl->createValidation($this->form_validation);
			if ($this->form_validation->run() == TRUE) {
                $email = strtolower($this->input->post('email'));
                $identity = $this->input->post('username');
                $password = $this->input->post('password');
                $group_ids = $this->input->post('roles');
                $additional_data = ["phone"=>$this->input->post("phone")];
                $this->ion_auth->register($identity, $password, $email, $additional_data, $group_ids);
                $user = $this->mdl->findByEmail($email);
                $this->mdl->addProfile($user->id);
                if((int)$this->input->post('active')==1){
                    $this->ion_auth->activate($user->id);
                }else{
                    $this->ion_auth->deactivate($user->id);
                }
                $this->session->set_flashdata('success', self::SUCCESS_MESSAGE_SAVED);
                redirect($this->route.'/show/'.$user->id);
			}else{
				$this->create();
			}
		}catch(Exception $e){
			var_dump($e);
		}
    }

    public function show($id){
        checkPermission($this->route,"view");
		$this->load->model($this->model,"mdl");
		$data = $this->mdl->find($id);
		$items = [
            "data"=>$data,
            "roles"=>$this->mdl->roleSelected($id,"name"),
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

    public function delete($id){
		checkPermission($this->route,"delete");
		try{
            $this->load->model($this->model,'mdl');
            $response = $this->mdl->delete($id,"id");
            $data = $this->mdl->find($id);
            $message = $data->users_active == "1" ? "Pengguna ini berhasil diaktifkan" : "Pengguna ini berhasil dinonaktifkan";
			$this->session->set_flashdata('success', $message);
			redirect($this->route);
		}catch(Exception $e){
			$this->session->set_flashdata('danger',  "Gagal ".$e);
			redirect($this->route);
		}
    }
    
    public function edit($id){
		checkPermission($this->route,"update");
		$this->load->model($this->model,"mdl");
		$data = $this->mdl->find($id);
        $items =[
            "data"=>$data,
            "roles"=>$this->role->getAll(),
            "roles_selected"=>$this->mdl->roleSelected($id),
        ];
		if(is_null($data)) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
		$this->template->content->view($this->route."/edit",$items);
        $this->template->publish();
    }
    
    public function update(){
        checkPermission($this->route,"update");
        $id = $this->input->post('id');
        $this->form_validation->set_rules('username', 'Username', 'min_length[5]|required|edit_unique[users.username.' . $id . ']');
        $this->form_validation->set_rules('email', 'Alamat email', 'trim|required|valid_email|edit_unique[users.email.' . $id . ']');
        $this->form_validation->set_rules('roles[]', 'Akses Pengguna', 'required');
        if($password){
            $this->form_validation->set_rules('password', 'Kata Sandi', 'required|min_length[6]|max_length[16]|matches[password_confirm]');
            $this->form_validation->set_rules('password_confirm', 'Ulangi Kata Sandi', 'required');
            $changePassword = true;
        }
        if($phone){
            $this->form_validation->set_rules('phone', 'Nomor Telepon', 'min_length[7]|required|edit_unique[users.phone.' . $id . ']');
        }
        if ($this->form_validation->run() == TRUE) {
            $this->load->model($this->model, "mdl");
            $post = $this->input->post(NULL, TRUE);
            $this->mdl->updateUser($post, $id);
            $this->session->set_flashdata('success', self::SUCCESS_MESSAGE_SAVED);
            redirect($this->route.'/show/'.$id);
        }else{
            $this->edit($id);
        }
    }

}