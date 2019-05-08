<section class="content-header">
    <h1>
        Reservasi
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Transaksi</a></li>
        <li><a href="<?php echo base_url("web/reservation");?>">Reservasi</a></li>
        <li class="active">Detail Data</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <?php $this->load->view("layouts/alert"); ?>
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <div class="clearfix">
                        <div class="pull-left">
                            <h3 class="box-title">Detail Reservasi</h3>
                        </div>
                        <div class="pull-right">
                            <h3 class="box-title">Resepsionis : <?php echo profile()->first_name." ".profile()->last_name; ?></h3>
                        </div>
                    </div>
                </div><!-- /.box-header -->
                <?php echo form_open("web/reservation/update", ["class"=>"form-horizontal", "enctype"=>"multipart/form-data", "id"=>"form-submit"]); ?>
                <?php echo form_hidden("id",$data->invoices_id); ?>
                <div class="box-body">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Nomor Reservasi</label>
                            <div class="col-sm-9">
                                <p class="form-control-static">&nbsp;: <?php echo $data->invoices_invoice_number;?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Tanggal Reservasi</label>
                            <div class="col-sm-9">
                                <p class="form-control-static">&nbsp;: <?php echo $data->invoices_invoice_date;?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Tanggal Check In</label>
                            <div class="col-sm-9">
                                <p class="form-control-static">&nbsp;: <?php echo $data->invoices_check_in_on;?></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Nama Pelanggan</label>
                            <div class="col-sm-9">
                                <p class="form-control-static">&nbsp;: <?php echo $data->customers_name;?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Durasi (Hari)</label>
                            <div class="col-sm-9">
                                <p class="form-control-static">&nbsp;: <?php echo $data->invoices_number_of_days; ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Tanggal Check Out</label>
                            <div class="col-sm-9">
                                <p class="form-control-static">&nbsp;: <?php echo !is_null($data->invoices_check_out_on) ? $data->invoices_check_out_on : "-";?>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <h1></h1>
                    <hr>
                    <div class="col-md-12 ">
                        <h4><i class="fa fa-bed"></i>&nbsp;&nbsp;Detail Kamar</h4>
                        <input type="hidden" id="categories" value='<?php echo json_encode($categories);?>' />
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th width="250">Kategori</th>
                                    <th width="250">No Kamar</th>
                                    <th>Kapasitas</th>
                                    <th>Jumlah Penghuni</th>
                                    <th>Harga / Hari</th>
                                    <th>Durasi (Hari)</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $subtotal = 0;  $i = 1; foreach($detail_rooms as $room): ?>
                                    <tr>
                                        <td><?php echo $i; ?></td>
                                        <td><?php echo $room->name;?></td>
                                        <td><?php echo $room->number;?></td>
                                        <td><?php echo $room->capacity;?></td>
                                        <td><?php echo $room->occupant;?></td>
                                        <td><?php echo $room->price;?></td>
                                        <td><?php echo $room->duration;?></td>
                                        <td><?php echo $room->total;?></td>
                                    </tr>
                                <?php $i++; $subtotal += $room->total;  EndForeach; ?>
                            </tbody>
                        </table>
                        <div class="col-md-6">
                            <h4><i class="fa fa-fire-extinguisher"></i>&nbsp;&nbsp;Servis</h4>
                            <table class="table" id="table-service">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nama</th>
                                        <th>Harga</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no = 1; if(count($serviceSelected) > 0): ?>
                                        <?php foreach($serviceSelected as $s): ?>
                                        <tr>
                                            <td><?php echo $no; ?></td>
                                            <td><?php echo $s->name;?></td>
                                            <td><?php echo $s->cost;?></td>
                                        </tr>
                                        <?php $no++; $subtotal += $s->cost; EndForeach; ?>
                                    <?php Else: ?>
                                    <tr>
                                        <td colspan='2' class='text-center'>-- tidak ada data --</td>
                                    </tr>
                                    <?php EndIf; ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-md-6">
                            <h4><i class="fa fa-bell"></i>&nbsp;&nbsp;Extra</h4>
                            <table class="table" id="table-service">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nama</th>
                                        <th>Harga</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no = 1; if(count($extraSelected) > 0): ?>
                                        <?php foreach($extraSelected as $e): ?>
                                        <tr>
                                            <td><?php echo $no; ?></td>
                                            <td><?php echo $e->name;?></td>
                                            <td><?php echo $e->cost;?></td>
                                        </tr>
                                        <?php $no++; $subtotal += $e->cost; EndForeach; ?>
                                    <?php Else: ?>
                                    <tr>
                                        <td colspan='2' class='text-center'>-- tidak ada data --</td>
                                    </tr>
                                    <?php EndIf; ?>
                                </tbody>
                            </table>
                        </div>
                        <table class="table">
                            <tr class="success">
                                <th colspan="4">SUBTOTAL</th>
                                <th colspan="5" class="text-right">
                                    <strong>
                                        <span class="subtotal"><?php echo $subtotal; ?></span>
                                    </strong>
                                </th>
                            </tr>
                            <tr>
                                <th colspan="4">DISKON (%)</th>
                                <th colspan="5">PAJAK (%)</th>
                            </tr>
                            <tr>
                                <th colspan="4">
                                    <ul class="detail detail-discount">
                                        <?php $total_disc = 0; foreach($detail_discounts as $discount): ?>
                                            <li class="clearfix">
                                                <span class="pull-left"><?php echo $discount->name."(".$discount->cost."%)"; ?></span>
                                                <span class="pull-right cost-disc" data-discount-id="<?php echo $discount->id; ?>" data-cost="<?php echo $discount->cost; ?>">
                                                    <?php echo !is_null($discount->cost) ? ($discount->cost / 100) * $subtotal  : 0; ?>
                                                </span>
                                            </li>
                                        <?php $total_disc += ($discount->cost / 100) * $subtotal;  EndForeach; ?>
                                    </ul>
                                </th>
                                <th colspan="5">
                                    <ul class="detail detail-tax">
                                        <?php $total_tax = 0; foreach($detail_taxes as $tax): ?>
                                            <li class="clearfix">
                                                <span class="pull-left"><?php echo $tax->name."(".$tax->cost."%)"; ?></span>
                                                <span class="pull-right cost-tax" data-tax-id="<?php echo $tax->id; ?>" data-cost="<?php echo $tax->cost; ?>">
                                                    <?php echo !is_null($tax->cost) ? ($tax->cost / 100) *  $subtotal  : 0; ?>
                                                </span>
                                            </li>
                                        <?php $total_tax += ($tax->cost / 100) *  $subtotal; EndForeach; ?>
                                    </ul>
                                </th>
                            </tr>
                            <tr class="success">
                                <th colspan="2">TOTAL DISKON</th>
                                <th colspan="2" class="text-right total-discount-txt"><?php echo $total_disc;?></th>
                                <th colspan="3">TOTAL PAJAK</th>
                                <th colspan="2" class="text-right total-tax-txt"><?php echo $total_tax;?></th>
                            </tr>
                            <tr class="info">
                                <th colspan="4">GRAND TOTAL</th>
                                <th colspan="5" class="text-right grand-total-txt"><?php echo !is_null($data->invoices_due) ? $data->invoices_due : 0; ?></th>
                                <input type="hidden" name="grand_total" class="grand-total" value="<?php echo !is_null($data->invoices_due) ? $data->invoices_due : 0; ?>" />
                            </tr>
                            <?php if($data->invoices_payment_type == "0"): ?>
                            <tr class="warning">
                                <th colspan="4">CASH</th>
                                <th colspan="5" class="text-right tendered-txt"><?php echo !is_null($data->invoices_tendered) ? $data->invoices_tendered : 0; ?></th>
                            </tr>
                            <tr class="warning">
                                <th colspan="4">KEMBALIAN</th>
                                <th colspan="5" class="text-right change-txt"><?php echo !is_null($data->invoices_change) ? $data->invoices_change : 0; ?></th>
                            </tr>
                            <?php EndIf; ?>
                            <?php if($data->invoices_payment_type == "1"): ?>
                            <tr class="warning">
                                <th colspan="4">NAMA BANK</th>
                                <th colspan="5" class="text-right tendered-txt"><?php echo !is_null($data->invoices_bank_name) ? $data->invoices_bank_name : ""; ?></th>
                            </tr>
                            <tr class="warning">
                                <th colspan="4">NOMOR KARTU KREDIT</th>
                                <th colspan="5" class="text-right tendered-txt"><?php echo !is_null($data->invoices_credit_number) ? $data->invoices_credit_number : ""; ?></th>
                            </tr>
                            <?php EndIf; ?>
                        </table>
                    </div>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                    <div class="pull-left">
                        <?php if(count($detail_rooms) > 0): ?>
                            <a href="javascript:void(0);" class="btn btn-success" id="btn-check-out"><i class="fa fa-money"></i>&nbsp;Check Out</a>
                        <?php EndIf; ?>
                        <?php if(!is_null($data->invoices_payment_type)): ?>
                            <a href="javacript:void(0);" class="btn btn-warning" id="btn-invoice-print"><i class="fa fa-copy"></i>&nbsp;Preview Invoice</a>
                        <?php EndIf; ?>
                    </div>
                    <div class="pull-right">
                        <a href="<?php echo $links["edit"]; ?>" class="btn btn-warning btn-edit-data">
                            <i class="fa fa-edit"></i>&nbsp;Edit
                        </a>
                        <a href="<?php echo $links["delete"]; ?>" class="btn btn-danger btn-remove-data">
                            <i class="fa fa-trash"></i>&nbsp;Hapus
                        </a>    
                    </div>  
                </div><!-- /.box-footer -->
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>

<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Check Out</h4>
            </div>
            <div class="modal-body">
                <form role="form" id="form-checkout">
                    <?php echo form_hidden("id",$data->invoices_id); ?>
                    <div class="form-group">
                      <label for="">Jenis Pembayaran</label>
                      <select class="form-control select2" id="payment_type" name="payment_type">
                          <option value="-1">-- Pilih Jenis Pembayaran--</option>
                          <option value="0" <?php echo $data->invoices_payment_type == "0" ? "selected" : ""; ?>>Tunai</option>
                          <option value="1" <?php echo $data->invoices_payment_type == "1" ? "selected" : ""; ?>>Kredit</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="">Total Bayar</label>
                      <input type="text" name="grand_total" class="form-control grand-total" value="<?php echo !is_null($data->invoices_due) ? $data->invoices_due : 0; ?>" readonly="readonly" />
                    </div>
                    <div class="form-group cash">
                      <label for="">Tunai</label>
                      <input type="number" name="tendered" class="form-control" id="input-cash" value="<?php echo !is_null($data->invoices_tendered) ? $data->invoices_tendered : 0; ?>"  />
                    </div>
                    <div class="form-group cash">
                      <label for="">Kembalian</label>
                      <input type="number" name="change" class="form-control" id="input-change" readonly="readonly" value="<?php echo !is_null($data->invoices_change) ? $data->invoices_change : 0; ?>" />
                    </div>
                    <div class="form-group credit">
                      <label for="">Nama Bank</label>
                      <input type="text" name="bank_name" class="form-control" id="input-bank" value="<?php echo !is_null($data->invoices_bank_name) ? $data->invoices_bank_name : ""; ?>" />
                    </div>
                    <div class="form-group credit">
                      <label for="">No Kartu Kredit</label>
                      <input type="text" name="credit_number" class="form-control" id="input-credit-number" value="<?php echo !is_null($data->invoices_credit_number) ? $data->invoices_credit_number : ""; ?>" />
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Tutup</button>
                <button type="button" class="btn btn-primary" id="btn-save-checkout"><i class="fa fa-save"></i>&nbsp;Simpan</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="modal fade" id="modal-print">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Invoice</h4>
            </div>
            <div class="modal-body">
                <iframe src="<?php echo base_url("web/reservation/invoice/".$data->invoices_id);?>" style="zoom:0.60" width="99.6%" height="768" frameborder="0"></iframe>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Tutup</button>
                <button type="button" data-url="<?php echo base_url("web/reservation/invoice/".$data->invoices_id);?>" class="btn btn-default" id="btn-print"><i class="fa fa-print"></i>&nbsp;Cetak</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->