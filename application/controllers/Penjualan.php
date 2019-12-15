<?php
class Penjualan extends ci_controller{
    
        function __construct() {
        parent::__construct();
        $this->load->model('model_penjualan');
        chek_session();
    }

    function index(){
        $this->load->library('pagination');
        $config['base_url'] = base_url().'index.php/penjualan/index/';
        $config['total_rows'] = $this->model_penjualan->tampilkan_data()->num_rows();
        $config['per_page'] = 3; 
        $this->pagination->initialize($config); 
        $data['paging']     =$this->pagination->create_links();
        $halaman            =  $this->uri->segment(3);
        $halaman            =$halaman==''?0:$halaman;
        $data['record']     =    $this->model_penjualan->tampilkan_data_paging($halaman,$config['per_page']);
        $this->template->load('template','penjualan/lihat_data',$data);
    }
    
    function post()
    {
        if(isset($_POST['submit'])){
            // proses kategori
            $this->model_penjualan->post();
            redirect('penjualan');
        }
        else{
            //$this->load->view('kategori/form_input');
            $this->template->load('template','penjualan/form_input');
        }
    }
    
    function edit()
    {
        if(isset($_POST['submit'])){
            // proses kategori
            $this->model_penjualan->edit();
            redirect('penjualan');
        }
        else{
            $id=  $this->uri->segment(3);
            $data['record']=  $this->model_penjualan->get_one($id)->row_array();
            //$this->load->view('kategori/form_edit',$data);
            $this->template->load('template','penjualan/form_edit',$data);
        }
    }
    
    
    function delete()
    {
        $id=  $this->uri->segment(3);
        $this->model_penjualan->delete($id);
        redirect('penjualan');
    }

}