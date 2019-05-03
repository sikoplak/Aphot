<section class="content-header">
    <h1>
         Menu Restoran
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master Data</a></li>
        <li><a href="<?php echo base_url("web/menu");?>">Kamar</a></li>
        <li class="active">Edit Data</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <?php $this->load->view("layouts/alert"); ?>
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Form Menu Restoran</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <?php echo form_open("web/menu/update", ["class"=>"form-horizontal", "enctype"=>"multipart/form-data"]); ?>
                         <?php echo form_hidden("id",$data->foods_id); ?>
                        <div class="box-body">
                            <div class="form-group">
                                <label for="" class="col-sm-2 control-label">Nama Menu</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="name" id="name" value="<?php echo $data->foods_name; ?>" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-2 control-label">Kategori</label>
                                <div class="col-sm-10">
                                    <?php echo form_dropdown('category_id', $categories, $data->foods_category_id, 'class="select2"');?> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="cost" class="col-sm-2 control-label">Harga</label>
                                <div class="col-sm-10">
                                    <input type="number" class="form-control" name="cost" id="cost" value="<?php echo $data->foods_cost; ?>" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="description" class="col-sm-2 control-label">Deskripsi</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" name="description" id="description" rows="6"><?php echo $data->foods_description; ?></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="description" class="col-sm-2 control-label">Foto</label>
                                <div class="col-sm-10">
                                    <input type="file" name="file" class="file-input-image" />
                                    <p></p>
                                    <?php echo imageExist($data->foods_image); ?>
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