<section class="content-header">
    <h1>
        Meja Restoran
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master</a></li>
        <li><a href="<?php echo base_url("web/table");?>">Meja Restoran</a></li>
        <li class="active">Detail</li>
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
                            <h3 class="box-title">Detail Diskon</h3>
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
                <?php echo form_open("web/table/update", ["class"=>"form-horizontal"]); ?>
                    <?php echo form_hidden("id",$data->tables_id); ?>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="first_name" class="col-sm-2 control-label">Nomor Meja</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">&nbsp;: <?php echo $data->tables_number; ?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Ketersediaan</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">&nbsp;: <?php echo labelStatus($data->tables_is_available, ["Ya", "Tidak"]); ?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Reservasi</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">&nbsp;: <?php echo labelStatus($data->tables_is_booked, ["Ya", "Tidak"]); ?></p>
                            </div>
                        </div>
                    </div><!-- /.box-body -->
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>