<div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                           SMS (Sales Management System) <small>Tambah Data Jenis Penjualan</small>
                        </h2>
                    </div>
                </div> 
                <!-- /. ROW  -->

                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <?php echo form_open('penjualan/post'); ?>
                                <div class="form-group">
                                    <label>Jenis Penjualan</label>
                                    <input type="text" name="penjualan" class="form-control" placeholder="kategori penjualan">
                                </div>

                                <button type="submit" name="submit" class="btn btn-primary btn-sm">Simpan</button> | 
                                <?php echo anchor('penjualan','Kembali',array('class'=>'btn btn-danger btn-sm'))?>
                                </form>
                            </div>
                        </div>
                        <!-- /. PANEL  -->
                    </div>
                </div>
                <!-- /. ROW  -->