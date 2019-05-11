<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends MY_Controller {

    public function __construct() {
		parent::__construct();
        $this->template->title = "Profil Saya";
        if(DEMO == true) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
    }

    public function index() {
        $this->load->model('User_model','user');
        $data = array();
        $data["profile"] = $this->user->getProfile();
        $this->template->content->view('profile/index' ,$data);
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
        $post = $this->input->post(NULL, TRUE);
        $this->load->model('User_model','user');
        $this->user->updateProfile($post);
        $this->session->set_flashdata('success', 'Profil anda berhasil dirubah');
        redirect("web/profile");
    }

}
