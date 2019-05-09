<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Resto_model extends MY_Model{

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
            "invoices.payment_type",
            "invoices.due",
            "invoices.discount",
            "invoice.tax",
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
        $db->where($this->table.".type", 1);
    }
    
}