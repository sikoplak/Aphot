<section class="content-header">
    <h1>
        Akun Saya
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Pengaturan</a></li>
        <li class="active">Akun Saya</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <?php $this->load->view("layouts/alert"); ?>
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Form Akun</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <?php echo form_open("web/account/update", ["class"=>"form-horizontal"]); ?>
                        <div class="box-body">
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Username</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="username" id="username" value="<?php echo $user->username;?>" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" name="email" id="email" value="<?php echo $user->email;?>" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Nomor telepon</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="phone" id="phone" value="<?php echo $user->phone;?>" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Kata Sandi</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" name="password" id="password" value="" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Ulangi Kata Sandi</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" name="password_confirm" id="password_confirm" value="" >
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