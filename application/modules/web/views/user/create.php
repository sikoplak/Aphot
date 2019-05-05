<section class="content-header">
    <h1>
        Pengguna
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master Data</a></li>
        <li><a href="<?php echo base_url("web/user");?>">Pengguna</a></li>
        <li class="active">Tambah Baru</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <?php $this->load->view("layouts/alert"); ?>
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Form Pengguna</h3>
                </div><!-- /.box-header -->
                <?php echo form_open("web/user/store", ["class"=>"form-horizontal", "enctype"=>"multipart/form-data"]); ?>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Username</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="username" id="username" value="" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" name="email" id="email" value="" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Nomor Telepon</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="phone" id="phone" value="" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" name="password" id="password" value="" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Konfirmasi Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" name="password_confirm" id="password_confirm" value="" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Aktifkan</label>
                            <div class="col-sm-10">
                                <span class="checkbox">
                                    <input type="checkbox" name="active" value="1" class="icheck">&nbsp;&nbsp;Ya
                                </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Akses Pengguna</label>
                            <div class="col-sm-10">
                                    <?php foreach($roles as $role): ?>
                                    <span class="checkbox">
                                        <input type="checkbox" name="roles[]" value="<?php echo $role->groups_id;?>" class="icheck">&nbsp;&nbsp;<?php echo $role->groups_description; ?>
                                    </span>
                                    <?php EndForeach; ?>
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
</section>