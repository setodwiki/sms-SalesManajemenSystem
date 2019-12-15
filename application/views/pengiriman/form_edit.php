<h3>Edit Jenis Pengiriman</h3>
<?php
echo form_open('pengiriman/edit');
?>
<input type="hidden" value="<?php echo $record['pengiriman_id']?>" name="id">
<table class="table table-bordered">
    <tr><td width="130">Jenis Pengiriman</td>
        <td><div class="col-sm-4""><input type="text" name="pengiriman" placeholder="jenis pengiriman" class="form-control"
                   value="<?php echo $record['nama_pengiriman']?>"></div>
       </td></tr>
    <tr><td colspan="2"><button type="submit" class="btn btn-primary btn-sm" name="submit">Simpan</button> 
        <?php echo anchor('pengiriman','Kembali',array('class'=>'btn btn-primary btn-sm'))?></td></tr>
</table>
</form>