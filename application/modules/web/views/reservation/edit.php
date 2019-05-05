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
                <?php echo form_open("web/reservation/update", ["class"=>"form-horizontal", "enctype"=>"multipart/form-data"]); ?>
                <?php echo form_hidden("id",$data->invoices_id); ?>
                <?php echo form_hidden("is_draft", 1); ?>
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
                            <tbody ></tbody>
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
                    </div>
                </div><!-- /.box-body -->
                <div class="box-footer">
                    <button type="submit" class="btn btn-info pull-right"><i class="fa fa-save"></i>&nbsp;Simpan</button>
                </div><!-- /.box-footer -->
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>