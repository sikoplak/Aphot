<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Permission_model extends MY_Model{

    public function __construct() {
		parent::__construct();
        $this->db = $this->load->database('default', TRUE);
    }

    public function redirectUser(){
        $this->load->model("User_model", "user");
        $roles = $this->user->getRoles();
        $group_id = array();
        foreach($roles as $row){
            $group_id[] = (int)$row->group_id;
        }
        $this->db->distinct();
        $this->db->where('group_id IN ('.implode(",",$group_id).')', NULL, FALSE);
        $this->db->where('url !=', null);
        $this->db->where('protected', null);
        $this->db->join('routes','routes.id = permissions.route_id');
        $this->db->order_by('sort');
        $this->db->order_by('name');
        $this->db->limit(1);
        $result = $this->db->get("permissions")->row();
        if(!is_null($result)){
            return "web/".$result->url;
        }else{
            return "auth/logout";
        }
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

    public function checkPermission($route, $action = null){
        $user_id = $this->session->userdata('user_id');
        $this->db->distinct();
        $this->db->select('group_id');
        $this->db->where('user_id',$user_id);
        $result = $this->db->get('users_groups')->result();
        $group_id = array();
        foreach($result as $row){
            $group_id[] = (int)$row->group_id;
        }
        if(!is_null($action)){
            if(count($group_id) > 0){
                $this->db->distinct();
                $this->db->where('permissions.group_id IN ('.implode(",",$group_id).')', NULL, FALSE);
                $this->db->where('routes.url',str_replace("web/", null, $route));
                $this->db->where('permissions.can_'.$action, 1);
                $this->db->join('routes','routes.id = permissions.route_id');
                $permission = $this->db->get("permissions")->num_rows();
                return (int)$permission > 0 ? TRUE : FALSE;
            }else{
                return FALSE;
            }
        }else{
            if(count($group_id) > 0){
                $this->db->distinct();
                $this->db->where('permissions.group_id IN ('.implode(",",$group_id).')', NULL, FALSE);
                $this->db->where('routes.url',str_replace("web/", null, $route));
                $this->db->limit(1);
                $this->db->join('routes','routes.id = permissions.route_id');
                $permission = $this->db->get("permissions")->row();
                return [
                    "create"=> isset($permission->can_create) && (int)$permission->can_create == 1 ? TRUE : FALSE ,
                    "update"=> isset($permission->can_update) && (int)$permission->can_update == 1 ? TRUE : FALSE ,
                    "view"  => isset($permission->can_view) && (int)$permission->can_view == 1 ? TRUE : FALSE ,
                    "delete"=> isset($permission->can_delete) && (int)$permission->can_delete == 1 ? TRUE : FALSE
                ];
            }else{
                return [
                    "create"=>FALSE,
                    "update"=>FALSE,
                    "view"=>FALSE,
                    "delete"=>FALSe
                ];
            }
        }
        
    }

    public function tablePermission(){
        $this->db->distinct();
        $this->db->where('parent_id',null);
        $this->db->where('protected',null);
        $this->db->order_by('sort','ASC');
        $data = $this->db->get('routes')->result();
        if(!is_null($data)){
            foreach($data as $row){
                $this->tablePermissionRow($row);
            }
        }
    }

    private function tablePermissionRow($parent, $level = 0, $has_child = false){

        $this->db->distinct();
        $this->db->where('parent_id',$parent->id);
        $this->db->where('protected',null);
        $this->db->order_by('name','ASC');
        $data = $this->db->get('routes')->result();

        $menu_id = $parent->id;
        $parentId = $parent->parent_id ? $parent->parent_id : $parent->id;

        $hasChild = $has_child ? "is_child" : "is_parent";
        $isSecure = (int)$parent->protected == 1 ? '' : '';
        $isChecked = (int)$parent->protected == 1 ? 'checked' : '';
        $checkbox = "<input type='checkbox' name='routes[]' value='".$menu_id."' id='menu".$menu_id."' class=' menu  ".$hasChild." parent".$parentId."' data-menu-id='".$menu_id."'  data-parent-id='".$parentId."' ".$isChecked."  />";
        $menuName = $has_child ? "".$this->checkBoxWrapper($checkbox, $parent->name, $level) : "".$this->checkBoxWrapper($checkbox, $parent->name , $level)."";

        if(count($data) > 0){
            if(isset($parent->url) && !is_null($parent->url)){
                echo "
                    <tr>
                        <td>".$menuName."</td>
                        <td class='text-center'>".$this->checkBoxWrapper("<input type='checkbox' id='can_view".$menu_id."' name='can_view".$menu_id."' value='1'  class=' permission view'  data-menu-id='".$menu_id."'  data-parent-id='".$parentId."' ".$isChecked."  />", null, 0 ,false)."</td>
                        <td class='text-center'>".$this->checkBoxWrapper("<input type='checkbox' id='can_add".$menu_id."' name='can_add".$menu_id."' value='1'  class=' permission create'  data-menu-id='".$menu_id."'  data-parent-id='".$parentId."' ".$isChecked."  />", null, 0 ,false)."</td>
                        <td class='text-center'>".$this->checkBoxWrapper("<input type='checkbox' id='can_edit".$menu_id."' name='can_edit".$menu_id."' value='1'  class=' permission edit'  data-menu-id='".$menu_id."'  data-parent-id='".$parentId."' ".$isChecked."  />", null, 0 ,false)."</td>
                        <td class='text-center'>".$this->checkBoxWrapper("<input type='checkbox' id='can_delete".$menu_id."' name='can_delete".$menu_id."' value='1'  class=' permission delete'  data-menu-id='".$menu_id."'  data-parent-id='".$parentId."' ".$isChecked."  />", null, 0 ,false)."</td>
                    </tr>
                ";
            }else{
                echo "<tr><td colspan='5'>".$menuName."</td></tr>";
            }
            $level++;
            foreach($data as $row){
                $this->tablePermissionRow($row,$level,true);
            }
        }else{
            if(isset($parent->url) && !is_null($parent->url)){
                echo "
                    <tr class='".$isSecure."'>
                        <td>".$menuName."</td>
                        <td class='text-center'>".$this->checkBoxWrapper("<input type='checkbox' id='can_view".$menu_id."' name='can_view".$menu_id."' value='1'  class=' permission view'  data-menu-id='".$menu_id."'  data-parent-id='".$parentId."' ".$isChecked."  />", null, 0 ,false)."</td>
                        <td class='text-center'>".$this->checkBoxWrapper("<input type='checkbox' id='can_add".$menu_id."' name='can_add".$menu_id."' value='1'  class=' permission create'  data-menu-id='".$menu_id."'  data-parent-id='".$parentId."' ".$isChecked."  />", null, 0 ,false)."</td>
                        <td class='text-center'>".$this->checkBoxWrapper("<input type='checkbox' id='can_edit".$menu_id."' name='can_edit".$menu_id."' value='1'  class=' permission edit'  data-menu-id='".$menu_id."'  data-parent-id='".$parentId."' ".$isChecked."  />", null, 0 ,false)."</td>
                        <td class='text-center'>".$this->checkBoxWrapper("<input type='checkbox' id='can_delete".$menu_id."' name='can_delete".$menu_id."' value='1'  class=' permission delete'  data-menu-id='".$menu_id."'  data-parent-id='".$parentId."' ".$isChecked."  />", null, 0 ,false)."</td>
                    </tr>
                ";
            }else{
                echo "<tr><td colspan='5'>C</td></tr>";
            }
        }

    }

    private function createSpace($param = null){
        $html = "&nbsp&nbsp";
        $max = $param * 5;
        for($i = 0; $i < $max; $i++){
            $html .= "&nbsp;";
        }
        return $html;
   }

   private function checkBoxWrapper($checkbox, $name = null, $space = 0, $withIcon = true){
       if($withIcon){
            return '
                '.$this->createSpace($space).'<i class="fa fa-chevron-right"></i>&nbsp;'.$checkbox.'&nbsp;&nbsp;&nbsp;'.$name.'
            ';
       }else{
            return '
                '.$checkbox.'&nbsp;&nbsp;&nbsp;'.$name.'
            ';
       }
    }

}