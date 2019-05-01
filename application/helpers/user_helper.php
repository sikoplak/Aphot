<?php defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('profile')) {
    function profile(){
        $CI = get_instance();
        $CI->load->model('User_model', 'user');
        return $CI->user->getProfile();
    }
}

if (!function_exists('roles')) {
    function roles(){
        $CI = get_instance();
        $CI->load->model('User_model', 'user');
        $roles =  $CI->user->getRoles();
        $result = array();
        foreach($roles as $role){
            $result[] = ucfirst(strtolower($role->description));
        }
        return implode(", ", $result);
    }
}

if (!function_exists('photo')) {
    function photo(){
        $CI = get_instance();
        $CI->load->model('User_model', 'user');
        return $CI->user->getPhoto();
    }
}

if (!function_exists('sidebarMenu')) {
    function sidebarMenu(){
        $CI = get_instance();
        $CI->load->model('Permission_model', 'permission');
        $CI->permission->getMenuUser();
    }
}

if (!function_exists('getUserApiToken')) {
    function getUserApiToken(){
        $CI = get_instance();
        $CI->load->model('User_model', 'user');
        return $CI->user->token();
    }
}

if (!function_exists('checkPermission')) {
    function checkPermission($route, $action = null){
        $CI = get_instance();
        $CI->load->model('Permission_model', 'permission');
        $CI->load->library(['template']);
        $result = $CI->permission->checkPermission($route, $action);
        $routePermission = $CI->permission->checkPermission($route);
        $meta = array(
            '<meta name="can-create" content="'.($routePermission["create"] == true ? 1 : 0).'">',
            '<meta name="can-update" content="'.($routePermission["update"] == true ? 1 : 0).'">',
            '<meta name="can-view" content="'.($routePermission["view"] == true ? 1 : 0).'">',
            '<meta name="can-delete" content="'.($routePermission["delete"] == true ? 1 : 0).'">',
        );
        $CI->template->permissions = implode(null,$meta);
        if(!$result) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
    }
}

if (!function_exists('audit')) {
    function audit($oldValue, $newValue, $event, $auditable_id, $auditable_type){
        $CI = get_instance();
        $CI->load->model('Audit_model', 'ad');
        return $CI->ad->save($oldValue, $newValue, $event, $auditable_id, $auditable_type);
    }
}