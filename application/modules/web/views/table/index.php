<section class="content-header">
    <h1>
        Meja Restoran
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master</a></li>
        <li class="active">Meja Restoran</li>
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
                            <h3 class="box-title">Daftar Meja Restoran</h3>
                        </div>
                        <div class="pull-right">
                            <a href="<?php echo base_url('web/table/create');?>" class="btn btn-success btn-sm btn-create-data">
                                <i class="fa fa-plus"></i>&nbsp;Tambah Baru
                            </a>
                        </div>
                    </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <table id="table" class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nomor Meja</th>
                                <th>Ketersediaan</th>
                                <th>Reservasi</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>