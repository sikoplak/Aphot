<?php
/** application/libraries/MY_Form_validation **/ 
class MY_Form_validation extends CI_Form_validation 
{
    public $CI;

    public function __construct($rules = array()) {
        parent::__construct($rules);
    }

    function edit_unique($value, $params) {
        $this->set_message('edit_unique', "%s sudah digunakan !!");
        list($table, $field, $current_id) = explode(".", $params);
        $result = $this->CI->db->where($field, $value)->get($table)->row();
        return ($result && $result->id != $current_id) ? FALSE : TRUE;
    }

    function regex_check($str) {
        if (1 !== preg_match("/^(?:'[A-Za-z](([\._\-][A-Za-z0-9])|[A-Za-z0-9])*[a-z0-9_]*')$/", $str)) {
            $this->form_validation->set_message('regex_check', 'The %s field is not valid!');
            return FALSE;
        } else {
            return TRUE;
        }
    }
}
