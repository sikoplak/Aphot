<?php

defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('asset')) {

    function asset($url) {
        return site_url('public/' . $url);
    }

}

if (!function_exists('now')) {

    function now() {
        return date("Y-m-d H:i:s");
    }

}

if (!function_exists('gen_uuid')) {

    function gen_uuid() {
        return sprintf('%04x%04x-%04x-%04x-%04x-%04x%04x%04x', mt_rand(0, 0xffff), mt_rand(0, 0xffff), mt_rand(0, 0xffff), mt_rand(0, 0x0fff) | 0x4000, mt_rand(0, 0x3fff) | 0x8000, mt_rand(0, 0xffff), mt_rand(0, 0xffff), mt_rand(0, 0xffff)
        );
    }

}

if (!function_exists('gen_token')) {

    function gen_token() {
        return base64_encode(gen_uuid() . '' . date("Y-m-d H:i:s") . '' . time());
    }

}



if (!function_exists('status')) {

    function status($value = null) {
        if ((int) $value == 1) {
            return '<span class="badge badge-radius badge-success"> Aktif</span>';
        } else {
            return '<span class="badge badge-radius badge-danger"> Tidak Aktif</span>';
        }
    }

}

if (!function_exists('index_number')) {

    function index_number($val, $digit) {
        $i_number = strlen($val);
        $digit = $digit;
        for ($i = $digit; $i > $i_number; $i--) {
            $val = "0" . $val;
        }
        return $val;
    }

}

if (!function_exists('uploadFile')) {

    function uploadFile($fileName = "file", $pathTarget = "uploads", $type = "gif|jpg|png") {
        if ($_FILES[$fileName]) {
            if (!is_dir(FCPATH . "/" . $pathTarget . "/")) {
                mkdir(FCPATH . "/" . $pathTarget . "/");
            }
            $CI = get_instance();
            $CI->load->library('upload');
            $config['upload_path'] = FCPATH . "/" . $pathTarget . "/";
            $config['allowed_types'] = $type;
            $config['max_size'] = '8192';
            $config['overwrite'] = true;
            $config['file_name'] = md5(strRandom());
            $CI->upload->initialize($config);
            if ($CI->upload->do_upload($fileName)) {
                $saved_file_name = $CI->upload->data('file_name');
                return $pathTarget . "/" . $saved_file_name;
            }
        }
        return null;
    }

}


if (!function_exists('strToSlug')) {

    function strToSlug($str) {
        $str = strtolower(trim($str));
        $str = preg_replace('/[^a-z0-9-]/', '-', $str);
        $str = preg_replace('/-+/', "-", $str);
        return $str;
    }

}


if (!function_exists('isInternetConnected')) {

    function isInternetConnected($sCheckHost = 'www.google.com') {
        return (bool) @fsockopen($sCheckHost, 80, $iErrno, $sErrStr, 5);
    }

}



if (!function_exists('ceckFile')) {

    function ceckFile($path = null) {
        if (!is_null($path)) {
            if (file_exists(FCPATH . "" . $path)) {
                return true;
            }
        }
        return false;
    }

}

if (!function_exists('strRandom')) {

    function strRandom($length = 10) {
        $characters = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
        $charactersLength = strlen($characters);
        $randomString = "";
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

}

if (!function_exists('isHasFile')) {

    function isHasFile($name = 'file') {
        if ($_FILES[$name]['error'] == 4) {
            return false;
        }
        return true;
    }

}



if (!function_exists('selectCustom')) {

    function selectCustom(array $items, $name, $placeholder = 'Pilih Item', $id_selected = null) {
        $option = null;
        if (is_null($id_selected)) {
            $option .= '<option disabled selected>--' . $placeholder . '--</option>';
        } else {
            $option .= '<option disabled>--' . $placeholder . '--</option>';
        }
        foreach ($items as $row) {
            $selected = $row["id"] == $id_selected ? "selected" : "";
            $option .= '<option value="' . $row["id"] . '" ' . $selected . ' >' . $row["name"] . '</option>';
        }
        return "<select name='" . $name . "' id='" . $name . "' class='form-control select2'>" . $option . "</select>";
    }

}

if (!function_exists('selectMultipleCustom')) {

    function selectMultipleCustom(array $items, $name, $placeholder = 'Pilih Item', $id_selected = null) {
        $option = null;
        foreach ($items as $row) {
            $selected = "";
            if (!is_null($id_selected)) {
                foreach ($id_selected as $ids) {
                    if ((int) $ids == (int) $row["id"]) {
                        $selected = "selected";
                    }
                }
                $option .= '<option value="' . $row["id"] . '" ' . $selected . ' >' . $row["name"] . '</option>';
            } else {
                $option .= '<option value="' . $row["id"] . '" ' . $selected . ' >' . $row["name"] . '</option>';
            }
        }
        return "<select multiple='multiple' name='" . $name . "' id='" . $name . "' class='form-control select2'>" . $option . "</select>";
    }

}



if (!function_exists('martialStatus')) {

    function martialStatus($name) {
        switch ($name) {
            case 'SINGLE': return 'Belum Menikah';
                break;
            case 'MARRIED': return 'Menikah';
                break;
            case 'DIVORCE': return 'Cerai';
                break;
            default : return '-';
                break;
        }
    }

}

if (!function_exists('genderName')) {

    function genderName($name) {
        switch ($name) {
            case 'MALE': return 'Pria';
                break;
            case 'FEMALE': return 'Wanita';
                break;
            default : return '-';
                break;
        }
    }

}

if (!function_exists('imageExists')) {

    function imageExists($path = null) {
        if (!is_null($path)) {
            if (ceckFile($path)) {
                return site_url($path);
            }
        }
        return site_url('public/assets/img/user-blank.png');
    }

}

if (!function_exists('cropAndUpload')) {

    function cropAndUpload($path) {
        require APPPATH . '/libraries/CropImage.php';
        $avatarSrc = isset($_POST['avatar_src']) ? $_POST['avatar_src'] : null;
        $avatarData = isset($_POST['avatar_data']) ? $_POST['avatar_data'] : null;
        $avatarFile = isset($_FILES['avatar_file']) ? $_FILES['avatar_file'] : null;
        $crop = new CropImage($avatarSrc, $avatarData, $avatarFile);
        $result = $crop->getResult();
        $realImage = $result;
        if (!is_dir(FCPATH . "" . $path)) {
            mkdir(FCPATH . "" . $path);
        }
        $arr_photo = explode('/', $result);
        $photo = $path . '/' . end($arr_photo);
        $copy = copy(FCPATH . '' . $result, FCPATH . '' . $photo);
        if ($copy) {
            $realImage = $photo;
            if ($crop->getOriginal()) {
                $original = $crop->getOriginal();
                if (file_exists(FCPATH . '' . $original)) {
                    unlink(FCPATH . '' . $original);
                }
            }
            unlink(FCPATH . '' . $result);
        }
        $response = array(
            'state' => 200,
            'message' => $crop->getMsg(),
            'path' => $realImage,
            'result' => site_url($realImage)
        );
        return $response;
    }

}


if (!function_exists('curPageURL')) {
    function curPageURL() {
        $protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
        return $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    }
}

if (!function_exists('get_client_ip')) {
    function get_client_ip() {
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {   //check ip from share internet
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {   //to check ip is pass from proxy
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        return $ip;
    }
}

if (!function_exists('imageExist')) {
    function imageExist($path = null) {
        if(!is_null($path) && file_exists($path)){
            return '<img src="'.site_url($path).'" class="img-thumbnail img-form" >';
        }else{
            return '<p class="form-control-static">-</p>';
        }
    }
}