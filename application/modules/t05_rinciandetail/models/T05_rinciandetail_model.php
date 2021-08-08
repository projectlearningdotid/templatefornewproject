<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class T05_rinciandetail_model extends CI_Model
{

    public $table = 't05_rinciandetail';
    public $id = 'idrinciandetail';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json() {
        $this->datatables->select('idrinciandetail,rincian,tagihan,nominal');
        $this->datatables->from('t05_rinciandetail');
		if (isset($_POST['idrinciandetail']) && $_POST['idrinciandetail'] != '') { $this->datatables->like('idrinciandetail', $_POST['idrinciandetail']); }
		if (isset($_POST['rincian']) && $_POST['rincian'] != '') { $this->datatables->like('rincian', $_POST['rincian']); }
		if (isset($_POST['tagihan']) && $_POST['tagihan'] != '') { $this->datatables->like('tagihan', $_POST['tagihan']); }
		if (isset($_POST['nominal']) && $_POST['nominal'] != '') { $this->datatables->like('nominal', $_POST['nominal']); }
        //add this line for join
        //$this->datatables->join('table2', 't05_rinciandetail.field = table2.field');
        //$this->datatables->add_column('action', anchor(site_url('t05_rinciandetail/update/$1'),'Ubah')." | ".anchor(site_url('t05_rinciandetail/delete/$1'),'Hapus','onclick="javascript: return confirm(\'Apakah Anda yakin ingin menghapus data ?\')"'), 'idrinciandetail');
        $action = "";
        $hakAkses = $this->session->userdata('hakAkses'.substr($this->uri->segment(1), 4));
        if ($hakAkses['ubah']) {
            $action = anchor(site_url('t05_rinciandetail/update/$1'),'Ubah');
            if ($hakAkses['hapus']) {
                $action .= " | ";
            }
        }
        if ($hakAkses['hapus']) {
            $action .= anchor(site_url('t05_rinciandetail/delete/$1'),'Hapus','onclick="javascript: return confirm(\'Apakah Anda yakin ingin menghapus data ?\')"');
        }
        $this->datatables->add_column('action', $action, 'idrinciandetail');
        return $this->datatables->generate();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }

    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('idrinciandetail', $q);
		$this->db->or_like('rincian', $q);
		$this->db->or_like('tagihan', $q);
		$this->db->or_like('nominal', $q);
		$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('idrinciandetail', $q);
		$this->db->or_like('rincian', $q);
		$this->db->or_like('tagihan', $q);
		$this->db->or_like('nominal', $q);
		$this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

}

/* End of file T05_rinciandetail_model.php */
/* Location: ./application/models/T05_rinciandetail_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-08-09 00:33:28 */
/* http://harviacode.com */