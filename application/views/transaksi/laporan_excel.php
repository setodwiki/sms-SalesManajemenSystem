
<table border="1">
    <tr>
        <th>No.</th>
        <th>Tanggal</th>
        <th>Operator</th>
        <th>Jenis Penjualan</th>
        <th>Nomor SO</th>
        <th>Jenis Pengiriman</th>  
        <th>Jumlah Paket</th>
    </tr>
    <?php
        $no=1;
        $total=0;
        foreach ($record->result() as $r)
        {
            echo "<tr>
                    <td width='10'>$no</td>
                    <td width='160'>$r->tgl_penjualan</td>
                    <td>$r->nama_lengkap</td>
                    <td>$r->jenis_penjualan</td>
                    <td>$r->no_so</td>
                    <td>$r->nama_pengiriman</td>
                    <td>$r->jml_paket</td>
                </tr>";
            $no++;
            $total=$total+$r->jml_paket;
        }
    ?>
    <tr>
        <td colspan="6">T O T A L</td>
        <td> <?php echo number_format($total,2);?></td>
    </tr>

</table>