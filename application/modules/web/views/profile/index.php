<section class="content-header">
    <h1>
        Profile Saya
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Pengaturan</a></li>
        <li class="active">Profile Saya</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <?php $this->load->view("layouts/alert"); ?>
        <div class="col-md-3">
            <!-- Profile Image -->
            <div class="box box-primary">
               <?php $this->load->view("profile/image-user"); ?>
            </div><!-- /.box -->
        </div>
        <div class="col-md-9">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Form Biodata</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <?php echo form_open("web/profile/update", ["class"=>"form-horizontal"]); ?>
                        <div class="box-body">
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Nama Depan</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="first_name" id="first_name" value="<?php echo $profile->first_name;?>" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Nama Belakang</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="last_name" id="last_name" value="<?php echo $profile->last_name;?>" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Jenis Kelamin</label>
                                <div class="col-sm-10 no-padding">
                                    <label class="radio-inline">
                                        <input type="radio" class="iradio" name="gender" value="0" <?php echo $profile->gender == 0 ? "checked" : "" ; ?> >&nbsp;&nbsp;Pria
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" class="iradio" name="gender" value="1" <?php echo $profile->gender == 1 ? "checked" : "" ; ?> >&nbsp;&nbsp;Wanita
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Golongan Darah</label>
                                <div class="col-sm-10 no-padding">
                                    <label class="radio-inline">
                                        <input type="radio" name="blood" value="0" <?php echo $profile->blood == 0 ? "checked" : "" ; ?>  class="iradio">&nbsp;&nbsp;A
                                    </label>
                                    &nbsp;
                                    <label class="radio-inline">
                                        <input type="radio" name="blood" value="1" <?php echo $profile->blood == 1 ? "checked" : "" ; ?>  class="iradio">&nbsp;&nbsp;B
                                    </label>
                                    &nbsp;
                                    <label class="radio-inline">
                                        <input type="radio" name="blood" value="2" <?php echo $profile->blood == 2 ? "checked" : "" ; ?>  class="iradio">&nbsp;&nbsp;AB
                                    </label>
                                    &nbsp;
                                    <label class="radio-inline">
                                        <input type="radio" name="blood" value="3"  <?php echo $profile->blood == 3 ? "checked" : "" ; ?> class="iradio">&nbsp;&nbsp;O
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Status Pernikahan</label>
                                <div class="col-sm-10 no-padding">
                                    <label class="radio-inline">
                                        <input type="radio" name="status" value="0" <?php echo $profile->blood == 0 ? "checked" : "" ; ?>  class="iradio">&nbsp;&nbsp;Belum Nikah
                                    </label>
                                    &nbsp;
                                    <label class="radio-inline">
                                        <input type="radio" name="status" value="1" <?php echo $profile->blood == 1 ? "checked" : "" ; ?>  class="iradio">&nbsp;&nbsp;Sudah Nikah
                                    </label>
                                    &nbsp;
                                    <label class="radio-inline">
                                        <input type="radio" name="status" value="2" <?php echo $profile->blood == 2 ? "checked" : "" ; ?>  class="iradio">&nbsp;&nbsp;Duda
                                    </label>
                                    &nbsp;
                                    <label class="radio-inline">
                                        <input type="radio" name="status" value="3"  <?php echo $profile->blood == 3 ? "checked" : "" ; ?> class="iradio">&nbsp;&nbsp;Janda
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Tempat Lahir</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="birth_place" id="birth_place" value="<?php echo $profile->birth_place;?>" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Tanggal Lahir</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control input-datepicker" name="birth_date" id="birth_date" value="<?php echo $profile->birth_date;?>" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Alamat Lengkap</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" name="address" id="address" rows="6"><?php echo $profile->address;?></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="first_name" class="col-sm-2 control-label">Tentang Saya</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" name="description" id="description" rows="6"><?php echo $profile->description;?></textarea>
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