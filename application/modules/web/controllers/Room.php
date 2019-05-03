<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Room extends MY_Controller{

    public function __construct() {
        parent::__construct();
        $this->route = "web/room";
        $this->model = "Room_model";
        $this->template->title = "Kamar";
        $this->template->javascript->add(site_url('assets/app/js/room.js'));
        $this->load->model("Status_room_model", "status");
		$this->load->model("Category_room_model", "categories");
    }

    public function create(){
		checkPermission($this->route,"create");
		$items =[
            "status"=>$this->status->toSelectItem("name", "id"),
			"categories"=>$this->categories->toSelectItem("name", "id"),
        ];
		$this->template->content->view($this->route.'/create', $items);
        $this->template->publish();
    }
    
    public function edit($id){
		checkPermission($this->route,"update");
		$this->load->model($this->model,"mdl");
		$data = $this->mdl->find($id);
        $items =[
            "data"=>$data,
            "status"=>$this->status->toSelectItem("name", "id"),
			"categories"=>$this->categories->toSelectItem("name", "id"),
        ];
		if(is_null($data)) show_error('Anda tidak diperkenankan mengakses halaman ini oleh administrator.', 403, 'Akses Ditolak'); 
		$this->template->content->view($this->route."/edit",$items);
        $this->template->publish();
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