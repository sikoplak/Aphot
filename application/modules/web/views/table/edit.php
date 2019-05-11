<section class="content-header">
    <h1>
        Meja Restoran
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master</a></li>
        <li><a href="<?php echo base_url("web/table");?>">Meja Restoran</a></li>
        <li class="active">Edit</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <?php $this->load->view("layouts/alert"); ?>
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Form Diskon</h3>
                </div><!-- /.box-header -->
                <?php echo form_open("web/table/update", ["class"=>"form-horizontal", "enctype"=>"multipart/form-data"]); ?>
                    <?php echo form_hidden("id",$data->tables_id); ?>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Nomor Meja</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="number" id="number" value="<?php echo $data->tables_number; ?>" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Ketersediaan</label>
                            <div class="col-sm-10">
                                <span class="checkbox">
                                    <input type="checkbox" name="is_available" value="1" class="icheck" <?php echo $data->tables_is_available == "1" ? "checked" : ""; ?> >&nbsp;&nbsp;Ya
                                </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Reservasi</label>
                            <div class="col-sm-10">
                                <span class="checkbox">
                                    <input type="checkbox" name="is_booked" value="1" class="icheck" <?php echo $data->tables_is_booked == "1" ? "checked" : ""; ?> >&nbsp;&nbsp;Ya
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