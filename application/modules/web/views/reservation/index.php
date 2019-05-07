<section class="content-header">
    <h1>
        Reservasi
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Transaksi</a></li>
        <li class="active">Reservasi</li>
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
                            <h3 class="box-title">Daftar Reservasi</h3>
                        </div>
                        <div class="pull-right">
                            <a href="javascript:void(0);" id="btn-check-in" class="btn btn-success btn-sm btn-create-data">
                                <i class="fa fa-calendar-check-o"></i>&nbsp;Check In
                            </a>
                        </div>
                    </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <table id="table" class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>No Reservasi</th>
                                <th>Tanggal Reservasi</th>
                                <th>Nama Pelanggan</th>
                                <th>Durasi (Hari)</th>
                                <th>Tanggal Akhir Reservasi</th>
                                <th>Check In</th>
                                <th>Check Out</th>
                                <th>Status</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="modal fade" id="modal-check-in">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Check In</h4>
            </div>
            <div class="modal-body">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab_1" data-toggle="tab">Daftar Pelanggan</a></li>
                        <li><a href="#tab_2" data-toggle="tab">Pelanggan Baru</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
                            <table id="table-customer" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nama Pelanggan</th>
                                        <th>Nomor Telepon</th>
                                        <th>Email</th>
                                        <th>Alamat</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                        <div class="tab-pane" id="tab_2">
                            <?php echo form_open("web/reservation/checkin_new_customer", ["class"=>"form-horizontal", "enctype"=>"multipart/form-data"]); ?>
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="" class="col-sm-2 control-label">Jenis Identitas</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="identity_type" id="identity_type" value="" required="required" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="" class="col-sm-2 control-label">Nomor Identitas</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="identity_number" id="identity_number" value="" required="required" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="" class="col-sm-2 control-label">Nama Pelanggan</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="name" id="name" value="" required="required" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="" class="col-sm-2 control-label">Nomor Telepon</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="phone" id="phone" value="" required="required" >
                                    </div>
                                </div>   
                                <div class="form-group">
                                    <label for="" class="col-sm-2 control-label">Email</label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" name="email" id="email" value="" >
                                    </div>
                                </div>   
                                <div class="form-group">
                                    <label for="" class="col-sm-2 control-label">Alamat Lengkap</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" name="address" id="address" rows="6"></textarea>
                                    </div>
                                </div>
                            </div><!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" class="btn btn-info pull-right"><i class="fa fa-check"></i>&nbsp;Lanjutkan</button>
                            </div><!-- /.box-footer -->
                            <?php echo form_close(); ?>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->