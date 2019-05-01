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