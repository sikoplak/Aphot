<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Reservation extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->route = "web/reservation";
        $this->model = "Invoice_model";
        $this->template->title = "Reservasi";
        $this->template->javascript->add(site_url('assets/app/js/reservation.js'));
        $this->load->model("Category_room_model","categories");
    }

    public function create(){
		checkPermission($this->route,"create");
        $this->load->model($this->model, "mdl");
        $id = $this->mdl->createInvoice(0);
        redirect($this->route.'/edit/'.$id);
    }
    
    public function edit($id){
		checkPermission($this->route,"update");
		$this->load->model($this->model,"mdl");
		$data = $this->mdl->find($id);
        $items =[
            "data"=>$data,
			"categories"=>$this->categories->getAll(),
        ];
		if(is_null($data)) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
		$this->template->content->view($this->route."/edit",$items);
        $this->template->publish();
	}

}