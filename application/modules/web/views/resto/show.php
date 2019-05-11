<section class="content-header">
    <h1>
    Restoran
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Transaksi</a></li>
        <li><a href="<?php echo base_url("web/resto");?>">Restoran</a></li>
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
                            <h3 class="box-title">Form Reservasi</h3>
                        </div>
                        <div class="pull-right">
                            <h3 class="box-title">Kasir : <?php echo profile()->first_name." ".profile()->last_name; ?></h3>
                        </div>
                    </div>
                </div><!-- /.box-header -->
                <?php echo form_open("web/resto/update", ["class"=>"form-horizontal", "enctype"=>"multipart/form-data", "id"=>"form-submit"]); ?>
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
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Nama Pelanggan</label>
                            <div class="col-sm-9">
                                <p class="form-control-static">&nbsp;: <?php echo !is_null($data->customers_name) ? $data->customers_name : "-";?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Nomor Meja</label>
                            <div class="col-sm-9">
                                <p class="form-control-static">&nbsp;: <?php echo isset($tables[0]) ? $tables[0]->number : "-";?></p>
                            </div>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                    <h1></h1>
                    <hr>

                    <div id="resto-pos">    
                        <div class="col-md-12">
                            <h4><i class="fa fa-edit"></i>&nbsp;Daftar Order</h4>
                            <table class="table" id="table-order">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Menu</th>
                                        <th>Harga</th>
                                        <th>Qty</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; foreach($detail_orders as $order): ?>
                                    <tr id="row<?php echo $order->food_id;?>" data-id="<?php echo $order->food_id;?>" class="menu_item">
                                       <td><?php echo $i;?></td>
                                       <td><?php echo $order->name;?></td>
                                       <td><?php echo $order->price;?></td>
                                       <td><?php echo $order->qty;?></td>
                                       <td><?php echo $order->total;?></td>
                                       <input type='hidden' class='total' data-id='<?php echo $order->food_id;?>' value='<?php echo $order->total;?>' />
                                    </tr>
                                    <?php $i++; EndForeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="clearfix"></div>
  
                    <div class="col-md-12">
                        <table class="table">
                            <tr class="success">
                                <th colspan="4">SUBTOTAL</th>
                                <th colspan="5" class="text-right">
                                    <strong>
                                        <span class="subtotal">0</span>
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
                                        <?php foreach($detail_discounts as $discount): ?>
                                            <li class="clearfix">
                                                <span class="pull-left"><?php echo $discount->name."(".$discount->cost."%)"; ?></span>
                                                <span class="pull-right cost-disc" data-discount-id="<?php echo $discount->id; ?>" data-cost="<?php echo $discount->cost; ?>">
                                                    <?php echo !is_null($discount->cost) ? $discount->cost : 0; ?>
                                                </span>
                                               
                                            </li>
                                        <?php EndForeach; ?>
                                    </ul>
                                </th>
                                <th colspan="5">
                                    <ul class="detail detail-tax">
                                        <?php foreach($detail_taxes as $tax): ?>
                                            <li class="clearfix">
                                                <span class="pull-left"><?php echo $tax->name."(".$tax->cost."%)"; ?></span>
                                                <span class="pull-right cost-tax" data-tax-id="<?php echo $tax->id; ?>" data-cost="<?php echo $tax->cost; ?>">
                                                    <?php echo !is_null($tax->cost) ? $tax->cost : 0; ?>
                                                </span>
                                               
                                            </li>
                                        <?php EndForeach; ?>
                                    </ul>
                                </th>
                            </tr>
                            <tr class="success">
                                <th colspan="2">TOTAL DISKON</th>
                                <th colspan="2" class="text-right total-discount-txt">0</th>
                                <th colspan="3">TOTAL PAJAK</th>
                                <th colspan="2" class="text-right total-tax-txt">0</th>
                            </tr>
                            <tr class="info">
                                <th colspan="4">GRAND TOTAL</th>
                                <th colspan="5" class="text-right grand-total-txt">0</th>
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

<div class="modal fade" id="modal-print">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Invoice</h4>
            </div>
            <div class="modal-body">
                <iframe src="<?php echo base_url("web/resto/invoice/".$data->invoices_id);?>" style="zoom:0.60" width="99.6%" height="768" frameborder="0"></iframe>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Tutup</button>
                <button type="button" data-url="<?php echo base_url("web/resto/invoice/".$data->invoices_id);?>" class="btn btn-default" id="btn-print"><i class="fa fa-print"></i>&nbsp;Cetak</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->









