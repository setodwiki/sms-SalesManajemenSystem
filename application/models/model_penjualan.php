<?php
class Model_penjualan extends CI_Model{
    
    
    
    function tampilkan_data(){
        
        return $this->db->get('penjualan');
    }
    
  function tampilkan_data_paging($halaman,$batas)
  {
      return $this->db->query("select * from penjualan");
  }
    
  function post(){
    $data=array(
       'jenis_penjualan'=>  $this->input->post('penjualan')
                );
    $this->db->insert('penjualan',$data);
    }
    
    
    function edit()
    {
        $data=array(
           'jenis_penjualan'=>  $this->input->post('penjualan')
                    );
        $this->db->where('penjualan_id',$this->input->post('id'));
        $this->db->update('penjualan',$data);
    }
    
    function get_one($id)
    {
        $param  =   array('penjualan_id'=>$id);
        return $this->db->get_where('penjualan',$param);
    }
    
    
    function delete($id)
    {
        $this->db->where('penjualan_id',$id);
        $this->db->delete('penjualan');
    }
}