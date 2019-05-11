<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Account extends MY_Controller {

    public function __construct() {
		parent::__construct();
        $this->template->title = "Akun Saya";
        if(DEMO == true) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
    }

    public function index() {
        $this->load->model('User_model','user');
        $data = array();
        $data["user"] = $this->ion_auth->user()->row();
        $this->template->content->view('account/index' ,$data);
        $this->template->publish();
    }

    public function create(){
        show_404();
    }

    public function show($id){
        $this->index();
    }

    public function delete($id){
        show_404();
    }

    public function update(){
        $changePassword = false;
        $id =  $this->session->userdata('user_id');
        $username = $this->input->post('username');
        $email = $this->input->post('email');
        $password = $this->input->post('password');
        $phone = $this->input->post('phone');
        $this->load->model('User_model','user');
        $this->form_validation->set_rules('username', 'Username', 'min_length[5]|required|edit_unique[users.username.' . $id . ']');
        $this->form_validation->set_rules('email', 'Alamat email', 'trim|required|valid_email|edit_unique[users.email.' . $id . ']');
        if($password){
            $this->form_validation->set_rules('password', 'Kata Sandi', 'required|min_length[6]|matches[password_confirm]');
            $this->form_validation->set_rules('password_confirm', 'Ulangi Kata Sandi', 'required');
            $changePassword = true;
        }
        if($phone){
            $this->form_validation->set_rules('phone', 'Nomor Telepon', 'min_length[7]|required|edit_unique[users.phone.' . $id . ']');
        }
        if ($this->form_validation->run() == TRUE) {
            $post = $this->input->post(NULL, TRUE);
            $this->user->updateUserAccount($post, $id);
            if($changePassword){
                $this->ion_auth->logout();
                $this->session->set_flashdata('message', 'Kata sandi telah dirubah, silahkan login untuk melanjutkan.');
                redirect('auth/login', 'refresh');
            }else{
                $this->session->set_flashdata('success', 'Pengaturan akun berhasil dirubah');
                redirect("web/account");
            }
        }else{
            $this->index();
        }
    }

}
