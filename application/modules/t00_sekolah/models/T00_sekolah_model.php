<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class T00_sekolah_model extends CI_Model
{

    public $table = 't00_sekolah';
    public $id = 'id';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json() {
        $this->datatables->select('id,kode,nama,alamat,nomor_telepon,logo');
        $this->datatables->from('t00_sekolah');
		if (isset($_POST['id']) && $_POST['id'] != '') { $this->datatables->like('id', $_POST['id']); }
		if (isset($_POST['kode']) && $_POST['kode'] != '') { $this->datatables->like('kode', $_POST['kode']); }
		if (isset($_POST['nama']) && $_POST['nama'] != '') { $this->datatables->like('nama', $_POST['nama']); }
		if (isset($_POST['alamat']) && $_POST['alamat'] != '') { $this->datatables->like('alamat', $_POST['alamat']); }
		if (isset($_POST['nomor_telepon']) && $_POST['nomor_telepon'] != '') { $this->datatables->like('nomor_telepon', $_POST['nomor_telepon']); }
		if (isset($_POST['logo']) && $_POST['logo'] != '') { $this->datatables->like('logo', $_POST['logo']); }
        //add this line for join
        //$this->datatables->join('table2', 't00_sekolah.field = table2.field');
        //$this->datatables->add_column('action', anchor(site_url('t00_sekolah/update/$1'),'Ubah')." | ".anchor(site_url('t00_sekolah/delete/$1'),'Hapus','onclick="javascript: return confirm(\'Apakah Anda yakin ingin menghapus data ?\')"'), 'id');
        $action = "";
        $hakAkses = $this->session->userdata('hakAkses'.substr($this->uri->segment(1), 4));
        if ($hakAkses['ubah']) {
            $action = anchor(site_url('t00_sekolah/update/$1'),'Ubah');
            if ($hakAkses['hapus']) {
                $action .= " | ";
            }
        }
        if ($hakAkses['hapus']) {
            $action .= anchor(site_url('t00_sekolah/delete/$1'),'Hapus','onclick="javascript: return confirm(\'Apakah Anda yakin ingin menghapus data ?\')"');
        }
        $this->datatables->add_column('action', $action, 'id');
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
        $this->db->like('id', $q);
		$this->db->or_like('kode', $q);
		$this->db->or_like('nama', $q);
		$this->db->or_like('alamat', $q);
		$this->db->or_like('nomor_telepon', $q);
		$this->db->or_like('logo', $q);
		$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id', $q);
		$this->db->or_like('kode', $q);
		$this->db->or_like('nama', $q);
		$this->db->or_like('alamat', $q);
		$this->db->or_like('nomor_telepon', $q);
		$this->db->or_like('logo', $q);
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

/* End of file T00_sekolah_model.php */
/* Location: ./application/models/T00_sekolah_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-08-08 10:13:02 */
/* http://harviacode.com */