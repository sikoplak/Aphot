<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Invoice_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'invoices';
    }

    public function dataTableColumnSelect() {
        return [
            "invoices.id",
            "invoices.invoice_number",
            "invoices.invoice_date",
            "customers.name",
            "invoices.number_of_days",
            'DATE_ADD(invoices.invoice_date, INTERVAL invoices.number_of_days DAY) as due_date',
            "invoices.check_in_on",
            "invoices.check_out_on",
            "invoices.is_draft",
            "invoices.created_on",  
        ];
    }

    public function dataTableColumnFilter(){
        return [
            "invoices.id",
            "invoices.invoice_number",
            "invoices.invoice_date",
            "customers.name",
            "invoices.number_of_days",
            "invoices.invoice_date",
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

    public function createInvoice($type, $customer_id = null){
        $number = $this->createInvoiceNumber($type);
        $data = array(
            "invoice_number"=>$number,
            "invoice_date"=>date("Y-m-d"),
            "type"=>$type,
            "is_draft"=>1,
            "check_in_on"=>date("Y-m-d H:i:s"),
            "created_on"=>date("Y-m-d H:i:s"),
            "created_by"=>$this->session->userdata('user_id')
        );
        if(!is_null($customer_id)) $data["customer_id"] = $customer_id;
        $this->db->insert($this->table, $data);
        return $this->db->insert_id();
    }

    public function updateValidation($form, $id) {
        $form->set_rules('customer_id', 'Nama Pelanggan', 'required');
        $form->set_rules('number_of_days', 'Durasi', 'required');
    }

    public function getDetailRoom($id){
        $this->db->where("invoice_room.invoice_id", $id);
        $this->db->join('rooms','rooms.id = invoice_room.room_id');
        $this->db->join("categories_room","categories_room.id = rooms.category_id");
        return $this->db->get("invoice_room")->result();
    }

    public function updateReservation($data, $id){
        $oldData = $this->find($id);
        $this->db->trans_begin();
        
        $sub = ["invoice_discount", "invoice_extra", "invoice_food","invoice_room", "invoice_service", "invoice_tax"];
        foreach($sub as $row){
            $this->db->where("invoice_id", $id);
            $this->db->delete($row);
        }

        if(isset($data["room_id"])){
            $rooms = $data["room_id"];
            $i = 0;
            foreach($rooms as $room){

                $this->db->insert("invoice_room", [
                    "invoice_id"=>$id,
                    "room_id"=>$room,
                    "capacity"=>isset($data["capacity"][$i]) ? $data["capacity"][$i] : 0,
                    "occupant"=>isset($data["occupant"][$i]) ? $data["occupant"][$i] : 0,
                    "price"=>isset($data["price"][$i]) ? $data["price"][$i] : 0,
                    "duration"=>isset($data["duration"][$i]) ? $data["duration"][$i] : 0,
                    "total"=>isset($data["total"][$i]) ? $data["total"][$i] : 0,
                ]);

                if(isset($data["occupant"][$i])){
                    $this->db->where("id", $room);
                    $this->db->limit(1);
                    $this->db->update("rooms", ["occupant"=>$data["occupant"][$i]]);
                }

                $i++;
            }
        }

        if(isset($data["discount_id"])){
            $discounts = $data["discount_id"];
            $i = 0;
            foreach($discounts as $disc){
                $this->db->insert("invoice_discount", [
                    "invoice_id"=>$id,
                    "discount_id"=>$disc,
                    "cost"=>isset($data["cost_discount"][$i]) ? $data["cost_discount"][$i] : 0,
                ]);
                $i++;
            }
        }

        if(isset($data["tax_id"])){
            $taxes = $data["tax_id"];
            $i = 0;
            foreach($taxes as $tax){
                $this->db->insert("invoice_tax", [
                    "invoice_id"=>$id,
                    "tax_id"=>$tax,
                    "cost"=>isset($data["cost_tax"][$i]) ? $data["cost_tax"][$i] : 0,
                ]);
                $i++;
            }
        }

        if(isset($data["service_id"])){
            $services = $data["service_id"];
            foreach($services as $s){

                $this->db->where("id", $s);
                $this->db->limit(1);
                $_service = $this->db->get("services")->row();

                $this->db->insert("invoice_service", [
                    "invoice_id"=>$id,
                    "service_id"=>$s,
                    "cost"=>$_service->cost,
                ]);
            }
        }

        if(isset($data["extra_id"])){
            $extra = $data["extra_id"];
            foreach($extra as $e){

                $this->db->where("id", $e);
                $this->db->limit(1);
                $_extra = $this->db->get("extra")->row();

                $this->db->insert("invoice_extra", [
                    "invoice_id"=>$id,
                    "extra_id"=>$e,
                    "cost"=>$_extra->cost,
                ]);
            }
        }

        $this->db->where("id", $id);
        $this->db->limit(1);
        $updated = $this->db->update($this->table, [
            "customer_id"=>$data["customer_id"],
            "number_of_days"=>$data["number_of_days"],
            "check_in_on"=>$data["check_in_on"],
            "check_out_on"=>isset($data["check_out_on"]) ? $data["check_out_on"] : null,
            "due"=>$data["grand_total"],
            "discount"=>$data["discount"],
            "tax"=>$data["tax"],
            "is_draft"=>0
        ]);

        $this->db->trans_commit();
        audit($oldData, $updated, "UPDATE", $id, $this->table);    
        return $updated;    
    }

    public function getInvoiceTax($id, $type){
        $this->db->distinct();
        $this->db->where("invoice_id", $id);
        $this->db->where("active", 1);
        $this->db->join('taxes','taxes.id = invoice_tax.tax_id');
        $exists = $this->db->get("invoice_tax")->result();
        if(count($exists) > 0){
            return $exists;
        }else{
            $this->db->where("active", 1);
            $this->db->where("type", $type);
            return $this->db->get("taxes")->result();
        }
    }

    public function getInvoiceDiscount($id, $type){
        $this->db->distinct();
        $this->db->where("invoice_id", $id);
        $this->db->where("active", 1);
        $this->db->join('discounts','discounts.id = invoice_discount.discount_id');
        $exists = $this->db->get("invoice_discount")->result();
        if(count($exists) > 0){
            return $exists;
        }else{
            $this->db->where("active", 1);
            $this->db->where("type", $type);
            return $this->db->get("discounts")->result();
        }
    }

    public function checkOut(array $data){
        $id = $data["id"];
        if($data["payment_type"] == "0"){
            $this->db->where("id", $id);
            $this->db->limit(1);
            $this->db->update($this->table, [
                "tendered"=>$data["tendered"],
                "change"=>$data["change"],
                "payment_type"=>0,
                "bank_name"=>null,
                "credit_number"=>null,
                "created_on"=>date("Y-m-d H:i:s"),
                "created_by"=>$this->session->userdata('user_id'),
                "check_out_on"=>isset($data["check_out_on"]) && $data["check_out_on"] != "" ? $data["check_out_on"] : date("Y-m-d H:i:s"),
                "due"=>$data["due"],
                "discount"=>$data["discount"],
                "tax"=>$data["tax"]
            ]);
        }else{
            $this->db->where("id", $id);
            $this->db->limit(1);
            $this->db->update($this->table, [
                "tendered"=>0,
                "change"=>0,
                "payment_type"=>1,
                "bank_name"=>$data["bank_name"],
                "credit_number"=>$data["credit_number"],
                "created_on"=>date("Y-m-d H:i:s"),
                "created_by"=>$this->session->userdata('user_id'),
                "check_out_on"=>isset($data["check_out_on"]) && $data["check_out_on"] != "" ? $data["check_out_on"] : date("Y-m-d H:i:s"),
                "due"=>$data["due"],
                "discount"=>$data["discount"],
                "tax"=>$data["tax"]
            ]);
        }

        $rooms = $this->getDetailRoom($id);
        foreach($rooms as $row){
            $this->db->where("id", $row->room_id);
            $this->db->limit(1);
            $this->db->update("rooms", ["occupant" => 0]);
        }

        return TRUE;
    }
}