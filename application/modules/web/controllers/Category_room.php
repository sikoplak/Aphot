<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Category_room extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->cleanInput = true;
        $this->route = "web/category_room";
        $this->model = "Category_room_model";
        $this->template->title = "Kategori Kamar";
        $this->template->javascript->add(site_url('assets/app/js/category_room.js'));
    }

    protected function beforeCreate(array $data){ 
        $data["image"] = null;
        $upload = uploadFile();
        if(!is_null($upload)) $data["image"] = $upload;
        return $data; 
    }

  

    protected function beforeUpdate(array $data, $oldData, $id){ 
        if(!is_null($oldData->categories_room_image)){
            if(file_exists($oldData->categories_room_image)){
                unlink($oldData->categories_room_image);
            }
        }
        $data["image"] = null;
        $upload = uploadFile();
        if(!is_null($upload)) $data["image"] = $upload;
        return $data;
    }


}