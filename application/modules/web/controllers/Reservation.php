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

    public function checkin_customer($id){
        checkPermission($this->route,"create");
        $this->load->model($this->model, "mdl");
        $invoice_id = $this->mdl->createInvoice(0, $id);
        redirect($this->route.'/edit/'.$invoice_id);
    }

    public function checkin_new_customer(){
        checkPermission($this->route,"create");
        $this->load->model($this->model, "mdl");
        $this->load->model("Customer_model", "customer");
        $post = $this->input->post(NULL, TRUE);
        $customer_id = $this->customer->store($post);
        $invoice_id = $this->mdl->createInvoice(0, $customer_id);
        redirect($this->route.'/edit/'.$invoice_id);
    }
    
    public function edit($id){
		checkPermission($this->route,"update");
		$this->load->model($this->model,"mdl");
		$data = $this->mdl->find($id);
        $items =[
            "data"=>$data,
            "categories"=>$this->categories->getAll(),
            "detail_rooms"=>$this->mdl->getDetailRoom($id),
            "detail_taxes"=>$this->mdl->getInvoiceTax($id, 0),
            "detail_discounts"=>$this->mdl->getInvoiceDiscount($id, 0)
        ];
		if(is_null($data)) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
		$this->template->content->view($this->route."/edit",$items);
        $this->template->publish();
    }

    public function show($id){
		checkPermission($this->route,"view");
		$this->load->model($this->model,"mdl");
		$data = $this->mdl->find($id);
        $items =[
            "data"=>$data,
            "categories"=>$this->categories->getAll(),
            "detail_rooms"=>$this->mdl->getDetailRoom($id),
            "detail_taxes"=>$this->mdl->getInvoiceTax($id, 0),
            "detail_discounts"=>$this->mdl->getInvoiceDiscount($id, 0),
            "links"=>[
				"back"=>base_url($this->route),
				"edit"=>base_url($this->route."/edit/".$id),
				"delete"=>base_url($this->route."/delete/".$id),
			]
        ];
		if(is_null($data)) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
		$this->template->content->view($this->route."/show",$items);
        $this->template->publish();
    }
    
    public function update(){
        checkPermission($this->route,"update");
        $id = $this->input->post('id');
        $this->load->model($this->model, "mdl");
        $post = $this->input->post(NULL, TRUE);
        $this->mdl->updateReservation($post, $id);
        $this->session->set_flashdata('success', 'Data reservasi berhasil diperbaharui');
        redirect($this->route.'/show/'.$id);
    }

    public function invoice($id){
        checkPermission($this->route,"view");
        $this->load->model($this->model, "mdl");
        $data = $this->mdl->find($id);
        $items =[
            "data"=>$data,
            "categories"=>$this->categories->getAll(),
            "detail_rooms"=>$this->mdl->getDetailRoom($id),
            "detail_taxes"=>$this->mdl->getInvoiceTax($id, 0),
            "detail_discounts"=>$this->mdl->getInvoiceDiscount($id, 0),
        ];
        if(is_null($data)) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
        $this->load->view("reservation/invoice", $items);
    }



}