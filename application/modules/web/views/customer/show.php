<section class="content-header">
    <h1>
        Pelanggan
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master Data</a></li>
        <li><a href="<?php echo base_url("web/customer");?>">Pelanggan</a></li>
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
                            <h3 class="box-title">Detail Pelanggan</h3>
                        </div>
                        <div class="pull-right">
                            <a href="<?php echo $links["create"]; ?>" class="btn btn-success btn-create-data">
                                <i class="fa fa-plus"></i>&nbsp;Tambah
                            </a>
                            <a href="<?php echo $links["edit"]; ?>" class="btn btn-warning btn-edit-data">
                                <i class="fa fa-edit"></i>&nbsp;Edit
                            </a>
                            <a href="<?php echo $links["delete"]; ?>" class="btn btn-danger btn-remove-data">
                                <i class="fa fa-trash"></i>&nbsp;Hapus
                            </a>
                        </div>
                    </div>
                </div><!-- /.box-header -->
                <?php echo form_open("web/customer/update", ["class"=>"form-horizontal"]); ?>
                <?php echo form_hidden("id",$data->customers_id); ?>
                <div class="box-body">
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Jenis Identitas</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">&nbsp;: <?php echo $data->customers_identity_type ? $data->customers_identity_type : "-"; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Nomor Identitas</label>
                        <div class="col-sm-10">
                                <p class="form-control-static">&nbsp;: <?php echo $data->customers_identity_number ? $data->customers_identity_number : "-"; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Nama Pelanggan</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">&nbsp;: <?php echo $data->customers_name ?  $data->customers_name : "-"; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Nomor Telepon</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">&nbsp;: <?php echo $data->customers_phone ? $data->customers_phone : "-"; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">&nbsp;: <?php echo $data->customers_email ? $data->customers_email : "-"; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Alamat Lengkap</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">&nbsp;: <?php echo $data->customers_address ? $data->customers_address : "-"; ?></p>
                        </div>
                    </div>
                </div><!-- /.box-body -->
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>