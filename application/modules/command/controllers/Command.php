<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Command extends MX_Controller{

    public function __construct(){
        parent::__construct();
        $this->db = $this->load->database('default', TRUE);
        if (!$this->input->is_cli_request()) exit('Only CLI access allowed');
    }

    public function db_backup() {
        echo exec('mysqldump -u root -p  '.$this->db->database .' > '.FCPATH.'/database/backup.sql');
    }

    public function db_schema() {
        echo exec('mysqldump -u root -p --no-data ' . $this->db->database . ' > '.FCPATH.'/database/schema.sql');
    }

    public function seed(){
        $this->load->model('Seed_model', 'seed');
        $this->seed->run();
    }

}