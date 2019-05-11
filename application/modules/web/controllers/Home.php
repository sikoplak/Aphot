<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MX_Controller{

    public function __construct() {
        parent::__construct();
        $this->load->library(['template','form_validation','session','security','ion_auth']);
        if (!$this->ion_auth->logged_in()) redirect('auth');
    }

    public function index(){
        $this->load->model("Permission_model", "permission");
        $redirect = $this->permission->redirectUser();
        redirect($redirect);
    }
    


}