<section class="content-header">
    <h1>
        Profil Perusahaan
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Pengaturan</a></li>
        <li class="active">Profil Perusahaan</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <?php $this->load->view("layouts/alert"); ?>
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Form Profil Perusahaan</h3>
                </div><!-- /.box-header -->
                <?php echo form_open("web/company/update", ["class"=>"form-horizontal", "enctype"=>"multipart/form-data"]); ?>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Nama Perusahaan</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="company-name" id="company-name" value="<?php echo company("company-name");?>" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">NPWP</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="company-npwp" id="company-npwp" value="<?php echo company("company-npwp");?>" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Kode Pos</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="company-postal-code" id="company-postal-code" value="<?php echo company("company-postal-code");?>" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" name="company-email" id="company-email" value="<?php echo company("company-email");?>" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Nomor Telepon</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="company-phone" id="company-phone" value="<?php echo company("company-phone");?>" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Alamat Perusahaan</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="company-address" id="company-address" rows="6"><?php echo company("company-address");?></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Provinsi</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="company-province" id="company-province" value="<?php echo company("company-province");?>" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Kabupaten / Kota</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="company-regency" id="company-regency" value="<?php echo company("company-regency");?>" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Kecamatan</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="company-district" id="company-district" value="<?php echo company("company-district");?>" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Keluarahan</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="company-village" id="company-village" value="<?php echo company("company-village");?>" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Logo Perusahaan</label>
                            <div class="col-sm-10">
                                <input type="file" name="file" class="file-input-image" />
                                <p></p>
                                <?php echo imageExist(company("company-logo")); ?>
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