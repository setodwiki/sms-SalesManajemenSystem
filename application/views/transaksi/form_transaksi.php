<div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">
                            SMS (Sales Management System) <small>Transaksi</small>
                        </h2>
                    </div>
                </div> 
                <!-- /. ROW  -->

                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <?php echo form_open('transaksi', array('class'=>'form-horizontal')); ?>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Tanggal</label>
                                        <div class="col-sm-10">
                                          <input type="date" name="tgl_penjualan" placeholder="masukan tgl" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Jenis Penjualan</label>
                                        <div class="col-sm-10">
                                          <input list="penjualan" name="penjualan" placeholder="masukan jenis penjualan" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Nomor SO</label>
                                        <div class="col-sm-10">
                                          <input type="text" name="no_so" placeholder="nomor SO" class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Jenis Pengiriman</label>
                                        <div class="col-sm-10">
                                          <input list="pengiriman" name="pengiriman" placeholder="masukan jenis pengiriman" class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Jumlah Paket</label>
                                        <div class="col-sm-10">
                                          <input type="number" name="jml_paket" placeholder="QTY" class="form-control">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                          <button type="submit" name="submit" class="btn btn-primary btn-sm">Simpan</button> | <?php echo anchor('transaksi/selesai_belanja','Selesai',array('class'=>'btn btn-success btn-sm'))?>
                                        </div>
                                    </div>
                                </form>
                    
                                <datalist id="penjualan">
                                    <?php foreach ($penjualan->result() as $b) {
                                        echo "<option value='$b->jenis_penjualan'>";
                                    } ?>
                                    
                                </datalist>

                                <datalist id="pengiriman">
                                    <?php foreach ($pengiriman->result() as $b) {
                                        echo "<option value='$b->nama_pengiriman'>";
                                    } ?>
                                    
                                </datalist>
                            </div>
                        </div>
                        <!-- /. PANEL  -->
                    </div>


                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>No.</th>
                                                <th>Tanggal</th>
                                                <th>Jenis Penjualan</th>
                                                <th>Nomor SO</th>
                                                <th>Jenis Pengiriman</th>  
                                                <th>Jumlah Paket</th>  
                                            </tr>
                                        </thead>

                                        <tbody>
                                        <?php $no=1; $total=0; foreach ($detail as $r){ ?>
                                            <tr class="gradeU">
                                                <td><?php echo $no ?></td>
                                                <td><?php echo $r->tgl_penjualan ?></td>
                                                <td><?php echo $r->jenis_penjualan.' - '.anchor('transaksi/hapusitem/'.$r->id_paket,'Hapus',array('style'=>'color:red;')) ?></td>
                                                <td><?php echo $r->no_so ?></td>
                                                <td>
                                                <?php echo $r->nama_pengiriman?></td>
                                                <td><?php echo $r->jml_paket ?></td>             
                                            </tr>
                                        <?php $total=$total+($r->jml_paket);
                                        $no++; } ?>
                                            <tr class="gradeA">
                                                <td colspan="5">T O T A L</td>
                                                <td> <?php echo number_format($total,2);?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /. TABLE  -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /. ROW  -->