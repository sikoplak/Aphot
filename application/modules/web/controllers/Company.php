<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Company extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->route = "web/company";
        $this->model = "Company_model";
        $this->template->title = "Profil Perusahaan";
    }

    public function create(){
        show_404();
    }

    public function show($id){
        show_404();
    }

    public function edit($id){
        show_404();
    }

    public function delete($id){
        show_404();
    }

    public function update(){
		try{

            checkPermission($this->route,"update");
            $post = $this->input->post(NULL, TRUE);

            $post["company-logo"] = null;
            if ($_FILES["file"]) {
                $exsist = company("company-logo");
                if(file_exists($exsist)){
                    unlink($exsist);
                }
                $upload = uploadFile();
                if(!is_null($upload)) $post["company-logo"] = $upload;    
            }   

            $this->load->model($this->model, 'mdl');
            $this->mdl->updateCompany($post);
            $this->session->set_flashdata('success', "Profil perusahaan berhasil diupdate.");
            redirect($this->route);
		}catch(Exception $e){
			$this->session->set_flashdata('danger',  self::FAILED_MESSAGE_UPATED);
			redirect($this->route);
		}
	}
   
}