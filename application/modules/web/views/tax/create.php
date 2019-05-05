<section class="content-header">
    <h1>
        Pajak
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Pengaturan</a></li>
        <li><a href="<?php echo base_url("web/tax");?>">Pajak</a></li>
        <li class="active">Tambah Baru</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <?php $this->load->view("layouts/alert"); ?>
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Form Pajak</h3>
                </div><!-- /.box-header -->
                <?php echo form_open("web/tax/store", ["class"=>"form-horizontal", "enctype"=>"multipart/form-data"]); ?>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="first_name" class="col-sm-2 control-label">Nama Pajak</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="name" id="name" value="" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="cost" class="col-sm-2 control-label">Nominal (%)</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control" name="cost" id="cost" max="100" min="0" value="0" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Deskripsi</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="description" id="description" rows="6"></textarea>
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
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button type="submit" class="btn btn-info pull-right"><i class="fa fa-save"></i>&nbsp;Simpan</button>
                    </div><!-- /.box-footer -->
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>