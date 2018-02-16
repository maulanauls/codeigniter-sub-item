<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// -- settings -- \\
class M_settings extends CI_Model
{
    
    function sheet(){
        $this->db->select('a.sheet_id,a.name');
        $this->db->from('TABLE_1 as a');
        $query = $this->db->get()->result();
        return $query;
    }
    
    function sheet_item($id){
        $this->db->select('a.sheet_id,a.name,b.name as sheet_name');
        $this->db->join('TABLE_2 as b','a.sheet_id = b.sheet_id','left');
        $this->db->from('TABLE_1 as a');
        $this->db->where('b.sheet_id', $id);
        $query = $this->db->get()->result();
        return $query;
    }
    
}