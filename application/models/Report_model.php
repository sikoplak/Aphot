<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Report_model extends CI_Model{

    public function __construct() {
        parent::__construct();
        $this->db = $this->load->database('default', TRUE);
    }

    public function countInvoice($first, $last, $type){
        $this->db->where("invoice_date >= '".$first."' ");
        $this->db->where("invoice_date <= '".$last."' ");
        $this->db->where("type", $type);
        $this->db->where("is_draft", 0);
        $this->db->where("deleted_on", null);
        $this->db->where("deleted_by", null);
        return $this->db->get("invoices")->num_rows();
    }

    public function countRoom(){
        $this->db->where("occupant", 0);
        $this->db->where("deleted_on", null);
        $this->db->where("deleted_by", null);
        return $this->db->get("rooms")->num_rows();
    }

    public function countTable(){
        $this->db->where("is_available", 1);
        $this->db->where("is_booked", 0);
        $this->db->where("deleted_on", null);
        $this->db->where("deleted_by", null);
        return $this->db->get("tables")->num_rows();
    }

    public function sumTransaction($first, $last){
        $this->db->select_sum('due');
        $this->db->where("invoice_date >= '".$first."' ");
        $this->db->where("invoice_date <= '".$last."' ");
        $this->db->where("is_draft", 0);
        $this->db->where("deleted_on", null);
        $this->db->where("deleted_by", null);
        return $this->db->get('invoices')->row();
    }

    public function getByPeriodSum($type, $year){
        $sql = "
            SELECT 
                IFNULL((SELECT SUM(TABEl.due) WHERE TABEL.date_month = 1 AND TABEL.date_year = ".$year."), 0) as jan,
                IFNULL((SELECT SUM(TABEl.due) WHERE TABEL.date_month = 2 AND TABEL.date_year = ".$year."), 0) as feb,
                IFNULL((SELECT SUM(TABEl.due) WHERE TABEL.date_month = 3 AND TABEL.date_year = ".$year."), 0) as mar,
                IFNULL((SELECT SUM(TABEl.due) WHERE TABEL.date_month = 4 AND TABEL.date_year = ".$year."), 0) as apr,
                IFNULL((SELECT SUM(TABEl.due) WHERE TABEL.date_month = 5 AND TABEL.date_year = ".$year."), 0) as mei,
                IFNULL((SELECT SUM(TABEl.due) WHERE TABEL.date_month = 6 AND TABEL.date_year = ".$year."), 0) as jun,
                IFNULL((SELECT SUM(TABEl.due) WHERE TABEL.date_month = 7 AND TABEL.date_year = ".$year."), 0) as jul,
                IFNULL((SELECT SUM(TABEl.due) WHERE TABEL.date_month = 8 AND TABEL.date_year = ".$year."), 0) as aug,
                IFNULL((SELECT SUM(TABEl.due) WHERE TABEL.date_month = 9 AND TABEL.date_year = ".$year."), 0) as sept,
                IFNULL((SELECT SUM(TABEl.due) WHERE TABEL.date_month = 10 AND TABEL.date_year = ".$year."), 0) as okt,
                IFNULL((SELECT SUM(TABEl.due) WHERE TABEL.date_month = 11 AND TABEL.date_year = ".$year."), 0) as nov,
                IFNULL((SELECT SUM(TABEl.due) WHERE TABEL.date_month = 12 AND TABEL.date_year = ".$year."), 0) as des
            FROM 
            (
                SELECT 
                DATE_FORMAT(invoice_date,'%c') as date_month,
                DATE_FORMAT(invoice_date,'%Y') as date_year,
                IFNULL(due, 0) as due
                FROM invoices WHERE invoices.deleted_on IS NULL AND invoices.deleted_by IS NULL AND invoices.is_draft = 0 AND invoices.type = ".$type."
            ) AS TABEL 
        ";
        return $this->db->query($sql)->result();
    }
    
    public function getByMenu($first, $last){
        $sql = "
            SELECT 
            TABEL.menu_name,
            COUNT(TABEL.id) as due
            FROM 
            (
                SELECT 
                    foods.name as menu_name,
                    foods.id,
                    invoice_date as invoice_date
                from foods
                LEFT JOIN invoice_food ON invoice_food.food_id = foods.id
                LEFT JOIN invoices ON invoices.id = invoice_food.invoice_id
                WHERE invoices.deleted_on IS NULL AND invoices.deleted_by IS NULL AND foods.deleted_on IS NULL AND foods.deleted_by IS NULL
                AND invoice_date >=  '".$first."' AND invoice_date <= '".$last."'
            ) AS TABEL GROUP BY TABEL.menu_name
        ";
        return $this->db->query($sql)->result();
    }
    
    public function getByRoomCategory($first, $last){
        $sql = "
            SELECT 
                TABEL.category_name,
                COUNT(TABEL.id) as due
            FROM 
            (
                SELECT 
                    categories_room.name as category_name,
                    rooms.id
                from categories_room
                LEFT JOIN rooms ON rooms.category_id = categories_room.id
                LEFT JOIN invoice_room ON invoice_room.room_id = categories_room.id
                LEFT JOIN invoices ON invoices.id = invoice_room.invoice_id
                WHERE invoices.deleted_on IS NULL AND invoices.deleted_by IS NULL AND categories_room.deleted_on IS NULL AND categories_room.deleted_by IS NULL
                AND invoice_date >=  '".$first."' AND invoice_date <= '".$last."'
            ) AS TABEL GROUP BY TABEL.category_name
        ";
        return $this->db->query($sql)->result();
    }

    public function reservation($first, $last, $isArray = false){
        $sql = "
            SELECT * FROM (
                SELECT DISTINCT
                    1 AS ordered,
                    invoices.invoice_number,
                    invoices.invoice_date,
                    invoices.check_in_on as date_checkin,
                    invoices.check_out_on as date_checkout,
                    customers.name as customer_name,
                    categories_room.name as category_name,
                    rooms.number as room_number,
                    invoice_room.price,
                    invoice_room.duration,
                    invoice_room.total as total,
                    invoices.tax,
                    invoices.discount,
                    invoices.due
                FROM invoice_room 
                    LEFT JOIN invoices ON invoices.id = invoice_room.invoice_id
                    LEFT JOIN customers ON customers.id = invoices.customer_id
                    LEFT JOIN rooms on rooms.id = invoice_room.room_id
                    LEFT JOIN categories_room ON rooms.category_id = categories_room.id
                    WHERE invoices.deleted_on IS NULL AND invoices.deleted_by IS NULL
                UNION 
                
                SELECT DISTINCT
                    2 AS ordered,
                    null,
                    invoices.invoice_date,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    sum(invoice_room.total) as total,
                    sum(invoices.tax),
                    sum(invoices.discount),
                    sum(invoices.due)
                FROM invoice_room 
                LEFT JOIN invoices ON invoices.id = invoice_room.invoice_id
                LEFT JOIN customers ON customers.id = invoices.customer_id
                LEFT JOIN rooms on rooms.id = invoice_room.room_id
                LEFT JOIN categories_room ON rooms.category_id = categories_room.id
                WHERE invoices.deleted_on IS NULL AND invoices.deleted_by IS NULL
            
            ) AS TABLE_REPORT  WHERE TABLE_REPORT.invoice_date >= '".$first."' AND TABLE_REPORT.invoice_date <= '".$last."' AND TABLE_REPORT.ordered <> 0 ORDER BY TABLE_REPORT.ordered ASC, TABLE_REPORT.invoice_number ASC
        ";
        return $isArray == false ?  $this->db->query($sql)->result() : $this->db->query($sql)->result_array();
    }

    public function resto($first, $last, $isArray = false){
        $sql = "
            SELECT * FROM 
            (
                
                SELECT DISTINCT
                    1 AS ordered,
                    invoices.invoice_number,
                    invoices.invoice_date,
                    customers.name as customer_name,
                    tables.number as table_number,
                    categories_food.name as category_name,
                    foods.name as menu_name,
                    invoice_food.price,
                    invoice_food.qty,
                    invoice_food.total as total,
                    invoices.tax,
                    invoices.discount,
                    invoices.due
                FROM invoice_food
                LEFT JOIN foods ON foods.id  = invoice_food.food_id
                LEFT JOIN categories_food ON foods.category_id = categories_food.id
                LEFT JOIN invoices ON invoices.id = invoice_food.invoice_id
                LEFT JOIN customers ON customers.id = invoices.customer_id 
                LEFT JOIN invoice_table ON invoice_table.invoice_id = invoice_food.invoice_id
                LEFT JOIN tables ON tables.id = invoice_table.table_id
                WHERE invoices.deleted_on IS NULL AND invoices.deleted_by IS NULL
            
            UNION 
            
                SELECT DISTINCT
                    2 AS ordered,
                    null,
                    invoices.invoice_date,
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    sum(invoice_food.total) as total,
                    sum(invoices.tax),
                    sum(invoices.discount),
                    sum(invoices.due)
                FROM invoice_food
                LEFT JOIN foods ON foods.id  = invoice_food.food_id
                LEFT JOIN categories_food ON foods.category_id = categories_food.id
                LEFT JOIN invoices ON invoices.id = invoice_food.invoice_id
                LEFT JOIN customers ON customers.id = invoices.customer_id 
                LEFT JOIN invoice_table ON invoice_table.invoice_id = invoice_food.invoice_id
                LEFT JOIN tables ON tables.id = invoice_table.table_id
                WHERE invoices.deleted_on IS NULL AND invoices.deleted_by IS NULL
            
            ) AS TABLE_REPORT  WHERE TABLE_REPORT.invoice_date >=  '".$first."' AND TABLE_REPORT.invoice_date <= '".$last."' AND TABLE_REPORT.ordered <> 0 ORDER BY TABLE_REPORT.ordered ASC, TABLE_REPORT.invoice_number ASC
        ";
        return $isArray == false ?  $this->db->query($sql)->result() : $this->db->query($sql)->result_array();
    }

}