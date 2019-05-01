<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Category_room extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->route = "web/category_room";
        $this->model = "Category_room_model";
        $this->template->title = "Kategori Kamar";
        $this->template->javascript->add(site_url('assets/app/js/category_room.js'));
    }


}