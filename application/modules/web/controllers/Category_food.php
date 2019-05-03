<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Category_food extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->route = "web/category_food";
        $this->model = "Category_food_model";
        $this->template->title = "Kategori Menu Restoran";
        $this->template->javascript->add(site_url('assets/app/js/category_food.js'));
    }

    protected function beforeCreate(array $data){ 
        $data["image"] = null;
        $upload = uploadFile();
        if(!is_null($upload)) $data["image"] = $upload;
        return $data; 
    }

  

    protected function beforeUpdate(array $data, $oldData, $id){ 
        if(!is_null($oldData->categories_food_image)){
            if(file_exists($oldData->categories_food_image)){
                unlink($oldData->categories_food_image);
            }
        }
        $data["image"] = null;
        $upload = uploadFile();
        if(!is_null($upload)) $data["image"] = $upload;
        return $data;
    }


}