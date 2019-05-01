<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Permission_model extends MY_Model{

    public function __construct() {
		parent::__construct();
        $this->db = $this->load->database('default', TRUE);
    }
    
    public function getMenuUser(){
        $this->load->model("User_model", "user");
        $roles = $this->user->getRoles();

        $group_id = array();
        foreach($roles as $row){
            $group_id[] = (int)$row->group_id;
        }

        if(count($group_id) > 0){
            $this->db->distinct();
            $this->db->select('route_id');
            $this->db->where('group_id IN ('.implode(",",$group_id).')', NULL, FALSE);
            $permission = $this->db->get("permissions")->result();
            $route_id = array();

            if(count($permission) > 0){

                foreach($permission as $row){
                    $route_id[] = (int)$row->route_id;
                }

                $this->db->distinct();
                $this->db->where('parent_id',null);
                $this->db->where('id IN ('.implode(",",$route_id).')', NULL, FALSE);
                $this->db->order_by('sort','ASC');
                $data = $this->db->get('routes')->result();
                if(count($data) > 0){
                    foreach($data as $row){
                        $this->createMenuAuth($row, $route_id);
                    }
                }

            }

        }

        
    }

    private function createMenuAuth($parent, array $route_id){
        $this->db->distinct();
        $this->db->where('parent_id',$parent->id);
        $this->db->where('id IN ('.implode(",",$route_id).')', NULL, FALSE);
        $this->db->order_by('name','ASC');
        $data = $this->db->get('routes')->result();
        
        $url = is_null($parent->url) ? "javascript:void(0);" : base_url("web/".$parent->url);
        $icon = is_null($parent->icon) ? "fa fa-circle-o" : $parent->icon;

        if(count($data) > 0){
            echo '
                <li class="treeview">
                    <a href="#">
                        <i class="'.$icon.'"></i> <span>'.$parent->name.'</span> <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">';
                        foreach($data as $row){
                            $this->createMenuAuth($row, $route_id);
                        }
             echo   '</ul>
                </li>
            ';
        }else{
           echo '<li><a href="'.$url.'"><i class="'.$icon.'"></i> <span>'.$parent->name.'</span></a></li>';
        }

    }

}