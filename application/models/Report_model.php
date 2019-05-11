<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Report_model extends CI_Model{

    public function __construct() {
        parent::__construct();
        $this->db = $this->load->database('default', TRUE);
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
            
            ) AS TABLE_REPORT  WHERE TABLE_REPORT.invoice_date >=  '".$first."' AND TABLE_REPORT.invoice_date <= '".$last."' AND TABLE_REPORT.ordered <> 0 ORDER BY TABLE_REPORT.ordered ASC, TABLE_REPORT.invoice_number ASC
        ";
        return $isArray == false ?  $this->db->query($sql)->result() : $this->db->query($sql)->result_array();
    }

}