<?php defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '../vendor/autoload.php';

use \Firebase\JWT\JWT;

class User_model extends MY_Model{

    public function __construct() 
	{
		parent::__construct();
        $this->load->library('ion_auth');
        $this->table = 'users';
    }

    public function dataTableColumnFilter(){
        return [
            "users.id",
            "users.username",
            "users.email",
            "users.phone",  
            "users.active",  
            "users.created_on",  
        ];
    }

    public function createValidation($form) {
        $identity_column = "username";
        $this->form_validation->set_rules('username', 'Username', 'min_length[5]|trim|required|is_unique[' . $this->table . '.' . $identity_column . ']');
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[' . $this->table . '.email]');
        $this->form_validation->set_rules('phone', 'Nomor Telepon', 'min_length[7]|is_unique[' . $this->table . '.phone]');
        $this->form_validation->set_rules('password', 'Kata Sandi', 'required|min_length[6]|max_length[16]|matches[password_confirm]');
        $this->form_validation->set_rules('password_confirm', 'Ulangi Kata Sandi', 'required');
        $this->form_validation->set_rules('roles[]', 'Akses Pengguna', 'required');
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
        $this->db->join("users","users.id = users_profile.user_id");
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

    public function updateImage($path){
       $profile = $this->getProfile();
       if(!is_null($profile->image)){
            if(file_exists($profile->image)){
                unlink($profile->image);
            }
        }
        $data["image"] = $path;
        $this->db->where("user_id", $profile->user_id);
        return $this->db->update("users_profile", $data);
    }

    public function delete($value, $primary = "id") {
        $oldData = $this->find($value);
        $data = array();
        $data["active"] = $oldData->users_active == "1" ? 0 : 1;
        $this->db->where($this->table.".".$primary,$value);
        $this->db->limit(1);
        $this->db->update($this->table, $data);
        $updateValue = $this->find($value);
        audit($oldData, $updateValue, "DELETE", $value, $this->table);
        return TRUE;
    }

    protected function onWhere($db) {
        $id = $this->session->userdata('user_id');
        $db->where($this->table.".id !=", $id);
    }

    public function addProfile($user_id){
        return $this->db->insert("users_profile",[
            'user_id'=>$user_id
        ]);
    }

    public function findByEmail($email){
        $this->db->where("email",$email);
        $this->db->limit(1);
        return $this->db->get($this->table)->row();
    }

    public function roleSelected($id, $column = "id"){
        $this->db->distinct();
        $this->db->where("user_id",$id);
        $this->db->join("groups","groups.id = users_groups.group_id");
        $data = $this->db->get("users_groups")->result();
        $result = array();
        foreach($data as $row){
            $result[] = ucfirst($row->$column);
        }
        return $result;
    }

    public function updateUser(array $data, $id){
        $this->load->model('ion_auth_model');
        $this->ion_auth_model->update($id, $data);
        $this->ion_auth_model->remove_from_group(FALSE, $id);
        $this->ion_auth_model->add_to_group($data["roles"], $id);
        if((int)$data["active"] == 1){
            $this->ion_auth_model->activate($id);
        }else{
            $this->ion_auth_model->deactivate($id);
        }
    }
}