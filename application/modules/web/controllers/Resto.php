<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Resto extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->route = "web/resto";
        $this->model = "Resto_model";
        $this->template->title = "Restoran";
        $this->template->javascript->add(site_url('assets/app/js/resto.js'));
    }

    public function reserved($id){
        checkPermission($this->route,"create");
        $this->load->model($this->model,"mdl");
        $this->load->model("Invoice_model", "invoice");
        $number = $this->invoice->createInvoiceNumber(1);
        $invoice_id = $this->mdl->reserved($number, $id);
        redirect($this->route.'/edit/'.$invoice_id);
    }

    public function edit($id){
		checkPermission($this->route,"update");
        $this->load->model($this->model,"mdl");
        $this->load->model("Invoice_model", "invoice");
        $this->load->model("Table_model", "table");
		$data = $this->mdl->find($id);
        $items =[
            "data"=>$data,
            "tables"=>$this->table->getAll(),
            "detail_orders"=>$this->mdl->getDetailOrder($id),
            "detail_tables"=>$this->mdl->getDetailTable($id, true),
            "detail_taxes"=>$this->invoice->getInvoiceTax($id, 1),
            "detail_discounts"=>$this->invoice->getInvoiceDiscount($id, 1),
        ];
		if(is_null($data)) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
		$this->template->content->view($this->route."/edit",$items);
        $this->template->publish();
    }

    public function show($id){
		checkPermission($this->route,"view");
        $this->load->model($this->model,"mdl");
        $this->load->model("Invoice_model", "invoice");
        $this->load->model("Table_model", "table"); 
		$data = $this->mdl->find($id);
        $items =[
            "data"=>$data,
            "tables"=>$this->mdl->getDetailTable($id),
            "detail_orders"=>$this->mdl->getDetailOrder($id),
            "detail_tables"=>$this->mdl->getDetailTable($id, true),
            "detail_taxes"=>$this->invoice->getInvoiceTax($id, 1),
            "detail_discounts"=>$this->invoice->getInvoiceDiscount($id, 1),
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

    public function reserved_new_customer(){
        checkPermission($this->route,"create");
        $this->load->model($this->model, "mdl");
        $this->load->model("Customer_model", "customer");
        $post = $this->input->post(NULL, TRUE);
        unset($post["invoice_id"]);
        $customer_id = $this->customer->store($post);
        $invoice_id =  $this->input->post("invoice_id");
        $this->mdl->update(["customer_id"=>$customer_id], $invoice_id);
        $this->session->set_flashdata('success', "Berhasil menambahkan pelanggan baru");
        redirect($this->route.'/edit/'.$invoice_id);
    }

    public function update(){
        checkPermission($this->route,"update");
        $id = $this->input->post('id');
        $this->load->model('Invoice_model', 'invoice');
        $post = $this->input->post(NULL, TRUE);
        $this->invoice->updateReservation($post, $id);
        $this->session->set_flashdata('success', 'Data reservasi berhasil diperbaharui');
        redirect($this->route.'/show/'.$id);
    }

    public function invoice($id){
		checkPermission($this->route,"view");
        $this->load->model($this->model,"mdl");
        $this->load->model("Invoice_model", "invoice");
        $this->load->model("Table_model", "table"); 
		$data = $this->mdl->find($id);
        $items =[
            "data"=>$data,
            "tables"=>$this->mdl->getDetailTable($id),
            "detail_orders"=>$this->mdl->getDetailOrder($id),
            "detail_tables"=>$this->mdl->getDetailTable($id, true),
            "detail_taxes"=>$this->invoice->getInvoiceTax($id, 1),
            "detail_discounts"=>$this->invoice->getInvoiceDiscount($id, 1),
        ];
		if(is_null($data)) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
		$this->load->view($this->route."/invoice",$items);
    }

    public function invoice_barcode($code){
        checkPermission($this->route,"view");
        $this->load->library('Zend');
        $this->zend->load('Zend/Barcode');
        Zend_Barcode::render('code128', 'image', array('text'=>$code), array());
    }

}