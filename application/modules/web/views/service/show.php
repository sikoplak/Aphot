<section class="content-header">
    <h1>
       Servis
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master Data</a></li>
        <li><a href="<?php echo base_url("web/service");?>">Servis</a></li>
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
                            <h3 class="box-title">DetailServis</h3>
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
                <div class="box-body">
                    <?php echo form_open("web/service/update", ["class"=>"form-horizontal"]); ?>
                        <?php echo form_hidden("id",$data->services_id); ?>
                        <div class="box-body">
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Nama Servis</label>
                                <div class="col-sm-10">
                                    <p class="form-control-static">&nbsp;: <?php echo $data->services_name; ?></p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="cost" class="col-sm-2 control-label">Harga</label>
                                <div class="col-sm-10">
                                    <p class="form-control-static">&nbsp;: <?php echo $data->services_cost; ?></p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="description" class="col-sm-2 control-label">Deskripsi</label>
                                <div class="col-sm-10">
                                    <p class="form-control-static">&nbsp;: <?php echo $data->services_description; ?></p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="cost" class="col-sm-2 control-label">Foto</label>
                                <div class="col-sm-10">
                                    <?php echo imageExist($data->services_image); ?>
                                </div>
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" class="btn btn-info pull-right"><i class="fa fa-save"></i>&nbsp;Simpan</button>
                        </div><!-- /.box-footer -->
                    <?php echo form_close(); ?>
                </div>
            </div>
        </div>
    </div>
</section>