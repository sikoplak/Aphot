<section class="content-header">
    <h1>
        Laporan
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Laporan</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <?php $this->load->view("layouts/alert"); ?>
        <div class="col-md-12">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab_1" data-toggle="tab">Penginapan</a></li>
                    <li><a href="#tab_2" data-toggle="tab">Restoran</a></li>
                </ul>
                <div class="tab-content">
                    <div class="clearfix">
                        <div class="pull-right">
                            <a href="javascript:void(0);" class="btn btn-sm btn-success" id="btn-filter">
                                <i class="fa fa-filter"></i>&nbsp;Filter Data
                            </a>
                            <a href="javascript:void(0);" class="btn btn-sm btn-info" id="btn-print">
                                <i class="fa fa-print"></i>&nbsp;Cetak
                            </a>
                        </div>
                    </div>
                    <h1></h1>
                    <div class="tab-pane active" id="tab_1">
                        <?php $this->load->view('report/penginapan'); ?>
                    </div>
                    <div class="tab-pane" id="tab_2">
                        <?php $this->load->view('report/restoran'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="modal fade" id="modal-filter">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Filter Data</h4>
            </div>
            <div class="modal-body">
                <form class="form" id="filter-data">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="">Tanggal Awal</label>
                            <input type="text" class="form-control input-datepicker" id="first" value="<?php echo $first_date;?>"  />
                        </div>
                        <div class="form-group">
                            <label for="">Tanggal Akhir</label>
                            <input type="text" class="form-control input-datepicker" id="last" value="<?php echo $last_date;?>"  />
                        </div>
                    </div>
                    <div class="box-footer">
                        <button type="submit" class="btn btn-info pull-right"><i class="fa fa-check"></i>&nbsp;Submit</button>
                    </div><!-- /.box-footer -->
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->