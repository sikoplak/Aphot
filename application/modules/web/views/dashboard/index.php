<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Dashboard
        <small>Tahun <?php echo date("Y");?></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-md-2">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3 id="reservasi-penginapan">0</h3>
                    <p>Reservasi Penginapan</p>
                </div>
                <div class="icon">
                    <i class="fa fa-edit"></i>
                </div>
                <a href="javascript:void(0);" class="small-box-footer"></a>
            </div>
        </div><!-- ./col -->
        <div class="col-md-2">
            <!-- small box -->
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3 id="restoran">0</h3>
                    <p>Restoran</p>
                </div>
                <div class="icon">
                    <i class="fa fa-cutlery"></i>
                </div>
                <a href="javascript:void(0);" class="small-box-footer"></a>
            </div>
        </div><!-- ./col -->
        <div class="col-md-2">
            <!-- small box -->
            <div class="small-box bg-maroon">
                <div class="inner">
                    <h3 id="kamar">0</h3>
                    <p>Kamar Kosong</p>
                </div>
                <div class="icon">
                    <i class="fa fa-hotel"></i>
                </div>
                <a href="javascript:void(0);" class="small-box-footer"></a>
            </div>
        </div><!-- ./col -->
        <div class="col-md-2">
            <!-- small box -->
            <div class="small-box bg-orange">
                <div class="inner">
                    <h3 id="meja">0</h3>
                    <p>Meja Kosong</p>
                </div>
                <div class="icon">
                    <i class="fa fa-cubes"></i>
                </div>
                <a href="javascript:void(0);" class="small-box-footer"></a>
            </div>
        </div><!-- ./col -->
        <div class="col-md-2">
            <!-- small box -->
            <div class="small-box bg-teal">
                <div class="inner">
                    <h3 id="pelanggan">0</h3>
                    <p>Pelanggan / Tamu</p>
                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <a href="javascript:void(0);" class="small-box-footer"></a>
            </div>
        </div><!-- ./col -->
        <div class="col-md-2">
            <!-- small box -->
            <div class="small-box bg-purple">
                <div class="inner">
                    <h3 id="transaksi">0</h3>
                    <p>Pendapatan</p>
                </div>
                <div class="icon">
                    <i class="fa fa-money"></i>
                </div>
                <a href="javascript:void(0);" class="small-box-footer"></a>
            </div>
        </div><!-- ./col -->
    </div><!-- /.row -->
    <!-- Main row -->
    <div class="row">
        <div class="col-md-3">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h4><i class="fa fa-hotel"></i>&nbsp;Kategori Kamar</h4>
                </div>
                <div class="box-body">
                    <canvas id="pieChart1"></canvas>
                </div>
            </div>
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h4><i class="fa fa-cutlery"></i>&nbsp;Menu</h4>
                </div>
                <div class="box-body">
                    <canvas id="pieChart2"></canvas>
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h4><i class="fa fa-money"></i>&nbsp;Restoran vs Penginapan</h4>
                </div>
                <div class="box-body">
                    <canvas id="barChart"></canvas>
                </div>
            </div>
        </div>
    </div><!-- /.row (main row) -->

</section><!-- /.content -->