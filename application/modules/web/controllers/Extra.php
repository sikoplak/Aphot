<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Extra extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->route = "web/extra";
        $this->model = "Extra_model";
        $this->template->title = "Extra";
        $this->template->javascript->add(site_url('assets/app/js/extra.js'));
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