<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Company_model extends CI_Model{

    public function __construct() {
        parent::__construct();
        $this->db = $this->load->database('default', TRUE);
    }

    public function getBySlug($slug){
        $this->db->where("slug", $slug);
        $this->db->limit(1);
        $result = $this->db->get("company")->row();
        if(!is_null($result)){
            return $result->description;
        }
        return null;
    }

    public function updateCompany(array $data){
        foreach($data as $key => $row){
            $slug = $key;            
            $this->db->where("slug", $slug);
            $this->db->limit(1);
            $result = $this->db->get("company")->row();
            if(!is_null($result)){
                $this->db->where("slug", $slug);
                $this->db->limit(1);
                $this->db->update("company", ["description"=>$data[$slug]]);
            }else{
                $this->db->insert("company", ["slug"=>$slug, "description"=>$data[$slug]]);
            }
        }
    }
}