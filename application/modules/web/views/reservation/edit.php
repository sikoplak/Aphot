<section class="content-header">
    <h1>
        Reservasi
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master Data</a></li>
        <li><a href="<?php echo base_url("web/reservation");?>">Reservasi</a></li>
        <li class="active"><?php echo $data->invoices_is_draft == '1' ? 'Tambah Data' : 'Edit Data'; ?></li>
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
                                <input type="text" class="form-control" name="invoice_number" id="invoice_number" value="<?php echo $data->invoices_invoice_number;?>" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Tanggal Reservasi</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="invoice_date" id="invoice_date" value="<?php echo $data->invoices_invoice_date;?>" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Tanggal Check In</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control datetime-picker" name="check_in_on" id="check_in_on" value="<?php echo $data->invoices_check_in_on;?>" >
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Nama Pelanggan</label>
                            <div class="col-sm-9">
                                <select name="customer_id" id="customer_id">
                                    <?php if(!is_null($data->customers_id)): ?>
                                        <option value="<?php echo $data->customers_id; ?>"><?php echo $data->customers_name; ?></option>
                                    <?php EndIf; ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Durasi (Hari)</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control number_of_days" name="number_of_days" id="number_of_days" value="<?php echo $data->invoices_number_of_days; ?>" min="1" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Tanggal Check Out</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control datetime-picker" name="check_out_on" id="check_out_on" value="<?php echo $data->invoices_check_out_on;?>">
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <h1></h1>
                    <hr>
                    <div class="col-md-12 ">
                        <h4><i class="fa fa-bed"></i>&nbsp;&nbsp;Detail Kamar</h4>
                        <input type="hidden" id="categories" value='<?php echo json_encode($categories);?>' />
                        <table class="table" id="table-room">
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
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1; foreach($detail_rooms as $room): ?>
                                    <tr class='room-row' data-id='<?php echo $i;?>'>
                                        <td class='number'><?php echo $i;?></td>
                                        <td><select class='category_id select2' required='required' data-selected='<?php echo $room->category_id;?>' data-id='<?php echo $i;?>'></select></td>
                                        <td><select name='room_id[]' class='room_id select2' data-number='<?php echo $room->number;?>' data-selected='<?php echo $room->room_id;?>' required='required' data-id='<?php echo $i;?>'></select></td>
                                        <td><input name='capacity[]' type='text' class='form-control capacity' value='<?php echo $room->capacity;?>' readonly='readonly' data-id='<?php echo $i;?>'></td>
                                        <td><input name='occupant[]' type='number' min='1' value='<?php echo $room->occupant;?>' class='form-control occupant' required='required' data-id='<?php echo $i;?>'></td>
                                        <td><input name='price[]' type='text' class='form-control price' value='<?php echo $room->price;?>' readonly='readonly' data-id='<?php echo $i;?>'></td>
                                        <td><input name='duration[]' type='text' class='form-control duration' value='<?php echo $room->duration;?>' readonly='readonly' data-id='<?php echo $i;?>'></td></td>
                                        <td><input name='total[]' type='text' class='form-control total' value='<?php echo $room->total;?>' readonly='readonly' data-id='<?php echo $i;?>'></td></td>
                                        <td><a href="javascript:void(0);" class="btn btn-sm btn-danger delete-room" id="btn-remove-room" data-id='<?php echo $i;?>'><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                <?php $i++; EndForeach; ?>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th colspan="8"></th>
                                    <th>
                                        <a href="javascript:void(0);" class="btn btn-sm btn-success" id="btn-add-room">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </th>
                                </tr>
                            </tfoot>
                        </table>
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
                                                <input type="hidden" class="cost_discount" name="cost_discount[]" data-discount-id="<?php echo $discount->id; ?>" value="<?php echo !is_null($discount->cost) ? $discount->cost : 0; ?>" />
                                                <input type="hidden" name="discount_id[]" value="<?php echo $discount->id; ?>" />
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
                                                <input type="hidden" class="cost_tax" name="cost_tax[]" data-tax-id="<?php echo $tax->id; ?>" value="<?php echo !is_null($tax->cost) ? $tax->cost : 0; ?>" />
                                                <input type="hidden" name="tax_id[]" value="<?php echo $tax->id; ?>" />
                                            </li>
                                        <?php EndForeach; ?>
                                    </ul>
                                </th>
                            </tr>
                            <tr class="success">
                                <th colspan="2">TOTAL DISKON</th>
                                <th colspan="2" class="text-right total-discount">0</th>
                                <th colspan="3">TOTAL PAJAK</th>
                                <th colspan="2" class="text-right total-tax">0</th>
                            </tr>
                            <tr class="info">
                                <th colspan="4">GRAND TOTAL</th>
                                <th colspan="5" class="text-right grand-total-txt">0</th>
                                <input type="hidden" name="grand_total" class="grand-total" />
                            </tr>
                        </table>
                    </div>
                </div><!-- /.box-body -->
                <div class="box-footer">
                    <a href="javascript:void(0);" class="btn btn-success pull-left"><i class="fa fa-money"></i>&nbsp;Check Out</a>
                    <button type="submit" class="btn btn-info pull-right"><i class="fa fa-save"></i>&nbsp;Simpan</button>
                </div><!-- /.box-footer -->
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>