<?php
class model_transaksi extends ci_model
{
    
    
    function simpan_paket_detail()
    {
        $tgl               = $this->input->post('tgl_penjualan');
        $nama_penjualan    = $this->input->post('penjualan');
        $so             = $this->input->post('no_so');
        $jenis_pengiriman     = $this->input->post('pengiriman');
        $qty            = $this->input->post('jml_paket');
        
        $idpenjualan       = $this->db->get_where('penjualan',array('jenis_penjualan'=>$nama_penjualan))->row_array
        ();

        $idpengiriman       = $this->db->get_where('pengiriman',array('nama_pengiriman'=>$jenis_pengiriman))->row_array
        ();

        $data           = array(
                                'tgl_penjualan'=>$tgl,
                                'penjualan_id'=>$idpenjualan['penjualan_id'],
                                'no_so'=>$so, 
                                'pengiriman_id'=>$idpengiriman['pengiriman_id'],
                                'jml_paket'=>$qty,
                                'status'=>'0');
        $this->db->insert('paket_detail',$data);
    }
    
    function tampilkan_paket_detail()
    {
        $query  ="SELECT td.id_paket,td.tgl_penjualan,b.jenis_penjualan,td.no_so,td.jml_paket,p.nama_pengiriman
                FROM paket_detail as td, penjualan as b, pengiriman as p WHERE b.penjualan_id=td.penjualan_id and p.pengiriman_id=td.pengiriman_id and td.status='0'";
        return $this->db->query($query);
    }
    
    function hapusitem($id)
    {
        $this->db->where('id_paket',$id);
        $this->db->delete('paket_detail');
    }
    



    
    function selesai_belanja($data)
    {
        $this->db->insert('transaksi',$data);
        $last_id=  $this->db->query("select transaksi_id from transaksi order by transaksi_id desc")->row_array();
        $this->db->query("update paket_detail set transaksi_id='".$last_id['transaksi_id']."' where status='0'");
        $this->db->query("update paket_detail set status='1' where status='0'");
    }
    
    

    function laporan_default()
    {
        $query  ="SELECT td.id_paket,td.tgl_penjualan,o.nama_lengkap,b.jenis_penjualan,td.no_so,td.jml_paket,p.nama_pengiriman
                FROM paket_detail as td, penjualan as b,operator as o, pengiriman as p WHERE b.penjualan_id=td.penjualan_id and p.pengiriman_id=td.pengiriman_id";
        return $this->db->query($query);
    }
    
    function laporan_periode($tanggal1,$tanggal2)
    {
        $query  ="SELECT td.id_paket,td.tgl_penjualan,o.nama_lengkap,b.jenis_penjualan,td.no_so,td.jml_paket,p.nama_pengiriman
                FROM paket_detail as td, penjualan as b,operator as o, pengiriman as p WHERE b.penjualan_id=td.penjualan_id and p.pengiriman_id=td.pengiriman_id 
                and td.tgl_penjualan between '$tanggal1' and '$tanggal2'
                group by td.id_paket";
        return $this->db->query($query);
    }
}