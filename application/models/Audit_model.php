<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Audit_model extends MY_Model{

    public function __construct(){
        parent::__construct();
        $this->table = 'audits';
    }

    public function dataTableColumnFilter(){
        return [
            "audits.id",
            "users.username",
            "audits.event",
            "audits.url",
            "audits.ip_address",
            "audits.user_agent",
            "audits.date_created",    
        ];
    }

    public function save($oldValue, $newValue, $event, $auditable_id, $auditable_type){
        $this->load->library('ion_auth');
        $user_id = $this->ion_auth->user()->row()->id;
        if($auditable_type != $this->table){
            return $this->db->insert("audits",[
                "user_id"=>$user_id,
                "event"=>strtoupper($event),
                "auditable_id"=> $auditable_id,
                "auditable_type"=> $auditable_type,
                "old_values"=>json_encode($oldValue),
                "new_values"=>json_encode($newValue),
                "url"=>curPageURL(),
                "ip_address"=>get_client_ip(),
                "user_agent"=> isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : null,
                "date_created"=>now(),
                "date_updated"=>now(),
            ]);
        }
        
    }

    protected function belongsTo(){ 
        return array(
            [
                "target"=>"users",
                "foreign_key"=>"user_id"
            ]
        );
    }


}