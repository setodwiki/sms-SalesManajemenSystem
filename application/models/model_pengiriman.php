<?php
class Model_pengiriman extends CI_Model{
    
    
    
    function tampilkan_data(){
        
        return $this->db->get('pengiriman');
    }
    
  function tampilkan_data_paging($halaman,$batas)
  {
      return $this->db->query("select * from pengiriman");
  }
    
    function post(){
        $data=array(
           'nama_pengiriman'=>  $this->input->post('pengiriman')
                    );
        $this->db->insert('pengiriman',$data);
    }
    
    
    function edit()
    {
        $data=array(
           'nama_pengiriman'=>  $this->input->post('pengiriman')
                    );
        $this->db->where('pengiriman_id',$this->input->post('id'));
        $this->db->update('pengiriman',$data);
    }
    
    function get_one($id)
    {
        $param  =   array('pengiriman_id'=>$id);
        return $this->db->get_where('pengiriman',$param);
    }
    
    
    function delete($id)
    {
        $this->db->where('pengiriman_id',$id);
        $this->db->delete('pengiriman');
    }
}