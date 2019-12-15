<div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                           SMS (Sales Management System) <small>Tambah Data Pengiriman</small>
                        </h2>
                    </div>
                </div> 
                <!-- /. ROW  -->

                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <?php echo form_open('pengiriman/post'); ?>
                                <div class="form-group">
                                    <label>Nama Pengiriman</label>
                                    <input type="text" name="pengiriman" class="form-control" placeholder="Jenis Pengiriman">
                                </div>

                                <button type="submit" name="submit" class="btn btn-primary btn-sm">Simpan</button> | 
                                <?php echo anchor('pengiriman','Kembali',array('class'=>'btn btn-danger btn-sm'))?>
                                </form>
                            </div>
                        </div>
                        <!-- /. PANEL  -->
                    </div>
                </div>
                <!-- /. ROW  -->