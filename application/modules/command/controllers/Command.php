<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Command extends MX_Controller{

    public function __construct(){
        parent::__construct();
        $this->db = $this->load->database('default', TRUE);
        if (!$this->input->is_cli_request()) exit('Only CLI access allowed');
    }

    public function db_backup() {
        $folder = FCPATH.'/database';
        $files = glob($folder . '/*');
        foreach($files as $file){
            if(is_file($file)){ 
                unlink($file);
            }
        }
        echo exec('mysqldump -u root -p --no-data ' . $this->db->database . ' > '.FCPATH.'/database/schema.sql');
        echo exec('mysqldump -u root -p  '.$this->db->database .' > '.FCPATH.'/database/backup.sql');
    }


    public function seed(){
        $this->load->model('Seed_model', 'seed');
        $this->seed->run();
    }

}