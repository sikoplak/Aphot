<section class="content-header">
    <h1>
       Restoran
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Transaksi</a></li>
        <li class="active">Restoran</li>
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
                            <h3 class="box-title">Daftar Transaksi</h3>
                        </div>
                        <div class="pull-right">
                            <a href="javascript:void(0);" class="btn btn-success btn-sm btn-create-data">
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
                                <th>Nomor Invoice</th>
                                <th>Tanggal Invoice</th>
                                <th>Nama Pelanggan</th>
                                <th>Pembayaran</th>
                                <th>Sub Total</th>
                                <th>Diskon</th>
                                <th>Pajak</th>
                                <th>Grand Total</th>
                                <th>Status</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="modal fade" id="modal-check-in">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Reservasi Meja</h4>
            </div>
            <div class="modal-body">
                <table id="table-meja" class="table table-striped">
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
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->