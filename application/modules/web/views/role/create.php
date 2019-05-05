<section class="content-header">
    <h1>
        Akses Pengguna
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master Data</a></li>
        <li><a href="<?php echo base_url("web/role");?>">Akses Pengguna</a></li>
        <li class="active">Tambah Baru</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <?php $this->load->view("layouts/alert"); ?>
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Form Akses Pengguna</h3>
                </div><!-- /.box-header -->
                <?php echo form_open("web/role/store", ["class"=>"form-horizontal", "enctype"=>"multipart/form-data"]); ?>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="first_name" class="col-sm-2 control-label">Nama Akses Pengguna</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="name" id="name" value="" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Deskripsi</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="description" id="description" rows="6"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Hak Akses</label>
                            <div class="col-sm-10">
                                <div class="clearfix">
                                    <table id="table-create-edit" class="table table-bordered">
                                        <tr>
                                            <td rowspan="2">Daftar Menu</td>
                                            <td colspan="4" class="text-center">Aksi</td>
                                        </tr>
                                        <tr class="text-center">
                                                <td>
                                                <input type="checkbox" class=" view checked-header" id="checked-view" >&nbsp;&nbsp;Tampil
                                                </td>
                                                <td>
                                                    <input type="checkbox" class=" create checked-header" id="checked-create" >&nbsp;&nbsp;Tambah
                                                </td>
                                                <td>
                                                <input type="checkbox" class=" edit checked-header" id="checked-edit" >&nbsp;&nbsp;Ubah
                                                </td>
                                                <td>
                                                <input type="checkbox" class=" delete checked-header" id="checked-delete" >&nbsp;&nbsp;Hapus
                                                </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                                <i class="fa fa-chevron-right"></i>&nbsp;<input type="checkbox" class="" id="checked-all" >&nbsp;&nbsp;&nbsp;Pilih Semua
                                            </td>
                                        </tr>
                                        <?php tablePermission(); ?>
                                    </table>
                                </div>
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