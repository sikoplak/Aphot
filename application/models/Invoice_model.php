<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Invoice_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'invoices';
    }

    public function dataTableColumnFilter(){
        return [
            "invoices.id",
            "invoices.invoice_number",
            "invoices.invoice_date",
            "customers.name",
            "invoices.number_of_days",
            "invoices.check_in_on",
            "invoices.check_out_on",
            "invoices.is_draft",
            "invoices.created_on",  
        ];
    }

    protected function belongsTo(){ 
        return array(
            [
                "target"=>"customers",
                "foreign_key"=>"customer_id"
            ],
        );
    }

    protected function onWhere($db) {
        parent::onWhere($db);
        $db->where($this->table.".type", 0);
    }

    private function createInvoiceNumber($type){
        $now = date("Y-m-d", strtotime("now"));
        $this->db->select_max('invoice_number');
        $this->db->where("type", $type);
        $this->db->where("invoice_date", $now);
        $result = $this->db->get("invoices")->row();
        if(!is_null($result->invoice_number)){
            $number = explode(".", $result->invoice_number);
            $counter = index_number((int)end($number) + 1, 5);
            return $type == "0" ? "INN.".date("Ymd").".".$counter : "RES.".date("Ymd").".".$counter;
        }else{
            return $type == "0" ? "INN.".date("Ymd").".00001" : "RES.".date("Ymd").".00001";
        }
    }

    public function createInvoice($type){
        $number = $this->createInvoiceNumber($type);
        $this->db->insert($this->table, [
            "invoice_number"=>$number,
            "invoice_date"=>date("Y-m-d"),
            "type"=>$type,
            "is_draft"=>1,
            "created_on"=>date("Y-m-d H:i:s"),
            "created_by"=>$this->session->userdata('user_id')
        ]);
        return $this->db->insert_id();
    }

    public function updateValidation($form, $id) {
        $form->set_rules('customer_id', 'Nama Pelanggan', 'required');
        $form->set_rules('number_of_days', 'Durasi', 'required');
    }
}