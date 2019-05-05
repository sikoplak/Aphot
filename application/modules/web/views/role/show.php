<section class="content-header">
    <h1>
        Akses Pengguna
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master Data</a></li>
        <li><a href="<?php echo base_url("web/role");?>">Akses Pengguna</a></li>
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
                            <h3 class="box-title">Detail Akses Pengguna</h3>
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
                <?php echo form_open("web/role/update", ["class"=>"form-horizontal"]); ?>
                    <?php echo form_hidden("id",$data->groups_id); ?>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="first_name" class="col-sm-2 control-label">Nama Akses Pengguna</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">&nbsp;: <?php echo $data->groups_name; ?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Deskripsi</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">&nbsp;: <?php echo $data->groups_description; ?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Hak Akses</label>
                            <div class="col-sm-10">
                                <input type="hidden" id="permissions" value='<?php echo json_encode($permissions);?>' />
                                <table class="table table-bordered" id="table-show">
                                    <tr>
                                        <td rowspan="2"><strong>Menu</strong></td>
                                        <td colspan="4" class="text-center"><strong>Aksi</strong></td>
                                    </tr>
                                    <tr class="text-center">
                                        <td><strong>Tampil</strong></td>
                                        <td><strong>Tambah</strong></td>
                                        <td><strong>Ubah</strong></td>
                                        <td><strong>Hapus</strong></td>
                                    </tr>
                                    <?php tablePermission(); ?>
                                </table>
                            </div>
                        </div>
                    </div><!-- /.box-body -->
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>