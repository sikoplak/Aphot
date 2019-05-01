<?php defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '../vendor/fzaninotto/faker/src/autoload.php';

class Seed_model extends MY_Model{

    public function __construct() 
	{
		parent::__construct();
        $this->load->library('ion_auth');
        $this->faker = Faker\Factory::create('id_ID');
	}

    public function run(){
        echo ">> Memulai install...\n";
        $this->createRoutes();
        $this->createRole();
        $user = $this->createUser();
        echo ">> Install berhasil...\n";
        echo "==============================\n";
        echo ">> Administrator : \n";
        echo ">> Username : ".$user->username."\n";
        echo ">> Password : password\n";
        echo "==============================\n";
    }   

    public function createRoutes(){

        $string = file_get_contents(FCPATH."/seed/routes.json");
        $json = json_decode($string, true);

        foreach($json["RECORDS"] as $row){
            $parent_id = null;
            if(!is_null($row["parent_id"])){
                $parent = $this->getParentRoutes($row["parent_id"]);
                if(!is_null($parent)) $parent_id = $parent->id;
            }

            $this->db->insert("routes", [
                "name"=>$row["name"],
                "url"=>$row["url"] !== '' ? $row["url"] : null,
                "icon"=>$row["icon"] !== '' ? $row["icon"] : null,
                "protected"=>$row["protected"] !== '' ? $row["protected"] : null,
                "sort"=>$row["sort"] !== '' ? $row["sort"] : null,
                "parent_id"=>$parent_id
            ]);

        }

        return $this->db->get("routes")->result();
    }

    private function getParentRoutes($parent_id){

        $name = null;

        if($parent_id == "1") $name = "Dashboard";
        if($parent_id == "2") $name = "Master Data";
        if($parent_id == "3") $name = "Transaksi";
        if($parent_id == "4") $name = "Laporan";
        if($parent_id == "5") $name = "Pengaturan";

        $this->db->where("name", $name);
        $this->db->limit(1);
        return $this->db->get("routes")->row();
    }

    public function createRole(){
        $roles = ["Admin","Receptionst","Manager","Director","Supervisor","Engineer"];
        foreach($roles as $role){
            $name = strtolower($role);
            $description = strtoupper($role);
            $this->db->insert("groups",[
                "name"=>$name,
                "description"=>$description
            ]);
        }

        $rolesData =  $this->db->get("groups")->result();
        $routes = $this->db->get("routes")->result();

        foreach($rolesData as $role){
            foreach($routes as $route){
                $this->db->insert("permissions", [
                    "group_id"=>$role->id,
                    "route_id"=>$route->id,
                    "can_create"=>$route->name == "admin" ? 1 : 0,
                    "can_update"=>$route->name == "admin" ? 1 : 0,
                    "can_view"=>1,
                    "can_delete"=>$route->name == "admin" ? 1 : 0,
                ]);
            }
        }

        return $roles;
    }

    public function createUser(){

        $roles = $this->db->get("groups")->result();

        foreach($roles as $role){

            $email = $role->name == "admin" ? "super.admin@devel.com" : $this->faker->unique()->safeEmail;
            $username = $role->name == "admin" ? "super.admin" : $this->faker->unique()->userName;
            $user = $this->ion_auth->register($username, "password", $email ,["phone"=>$this->faker->phoneNumber], [$role->id]);
            
            $this->db->where("email", $email);
            $this->db->limit(1);
            $user = $this->db->get("users")->row();
    
            $gender = [0,1];
            $blood = [0, 1, 2, 3];
            $martial = [0, 1, 2];
    
            $this->db->insert('users_profile',[
                "user_id"=>$user->id,
                "first_name"=>$this->faker->firstName,
                "last_name"=>$this->faker->lastName,
                "gender"=>$gender[rand(0,1)],
                "birth_place"=>$this->faker->city,
                "birth_date"=>date("Y-m-d"),
                "blood"=>$blood[rand(0,3)],
                "status"=>$martial[rand(0,2)],
                "address"=>$this->faker->paragraph,
                "description"=>$this->faker->paragraph
            ]);

        }

       

        $this->db->where("email", "super.admin@devel.com");
        $this->db->limit(1);
        return $this->db->get("users")->row();
    }
}