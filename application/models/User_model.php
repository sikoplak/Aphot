<?php defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '../vendor/autoload.php';

use \Firebase\JWT\JWT;

class User_model extends MY_Model{

    public function __construct() 
	{
		parent::__construct();
        $this->load->library('ion_auth');
    }

    public function token($id = null) {
        $user = null;
        if ($this->ion_auth->logged_in()){
            $user = $this->ion_auth->user()->row();
        }else{
            $this->db->where("id",$id);
            $this->db->limit(1);
            $user = $this->db->get("users")->row();
        }
        $date = new DateTime();
        $payload['id'] = $user->id;
        $payload['username'] = $user->username;
        $payload['iat'] = $date->getTimestamp();
        $payload['exp'] = $date->getTimestamp() + 3600;
        return JWT::encode($payload, APP_KEY);
    }
    

    public function getProfile($id = null){
        $user = $this->ion_auth->user()->row();
        $user_id = is_null($id) ? $user->id : $id;
        $this->db->where("user_id", $user_id);
        $this->db->limit(1);
        return $this->db->get("users_profile")->row();
    }

    public function getRoles($id = null, $array = false){
        $user = $this->ion_auth->user()->row();
        $user_id = is_null($id) ? $user->id : $id;
        $this->db->where("user_id", $user_id);
        $this->db->join("groups","groups.id = users_groups.group_id");
        $data =  $this->db->get("users_groups")->result();
        if($array){
            $ids = array();
            foreach($data as $row){ $ids[] = $row->group_id; }
            return $ids;
        }else{
            return $data;
        }
    }

    public function getPhoto(){
        $profile = $this->getProfile();
        if(!is_null($profile->image)){
            return site_url($profile->image);
        }else{
            return site_url("assets/dist/img/no-user.png");
        }
    }

    public function updateProfile($data){
        $user = $this->ion_auth->user()->row();
        $this->db->where("user_id", $user->id);
        return $this->db->update("users_profile", $data);
    }

    public function updateUserAccount(array $data, $id){
        $this->load->model('ion_auth_model');
        return $this->ion_auth_model->update($id, $data);
    }
}