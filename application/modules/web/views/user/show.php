<section class="content-header">
    <h1>
        Pengguna
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Pengaturan</a></li>
        <li><a href="<?php echo base_url("web/user");?>">Pengguna</a></li>
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
                            <h3 class="box-title">Detail Pengguna</h3>
                        </div>
                        <div class="pull-right">
                            <a href="<?php echo $links["create"]; ?>" class="btn btn-success btn-create-data">
                                <i class="fa fa-plus"></i>&nbsp;Tambah
                            </a>
                            <a href="<?php echo $links["edit"]; ?>" class="btn btn-warning btn-edit-data">
                                <i class="fa fa-edit"></i>&nbsp;Edit
                            </a>
                            <?php if($data->users_active == "1"): ?>
                            <a href="<?php echo $links["delete"]; ?>" data-status="0" class="btn btn-danger btn-activated-data">
                                <i class="fa fa-user-times"></i>&nbsp;Nonaktifkan
                            </a>    
                            <?php Else: ?>
                            <a href="<?php echo $links["delete"]; ?>" data-status="1" class="btn btn-info btn-activated-data">
                                <i class="fa fa-check"></i>&nbsp;Aktifkan
                            </a>   
                            <?php EndIf; ?>
                        </div>
                    </div>
                </div><!-- /.box-header -->
                <?php echo form_open("web/user/update", ["class"=>"form-horizontal"]); ?>
                    <?php echo form_hidden("id",$data->users_id); ?>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="first_name" class="col-sm-2 control-label">Username</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">&nbsp;: <?php echo $data->users_username; ?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="cost" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">&nbsp;: <?php echo $data->users_email; ?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Nomor Telepon</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">&nbsp;: <?php echo !is_null($data->users_phone) ? $data->users_phone : "-"; ?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Status</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">&nbsp;: <?php echo labelStatus($data->users_active); ?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="cost" class="col-sm-2 control-label">Akses Pengguna</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">&nbsp;: <?php echo implode(", ",$roles); ?></p>
                            </div>
                        </div>
                    </div><!-- /.box-body -->
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>