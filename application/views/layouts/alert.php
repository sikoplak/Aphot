<div class="col-md-12">

    <?php if (validation_errors()): ?>
        <div class="alert alert-warning alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <h4><i class="icon fa fa-warning"></i> Peringatan !</h4>
            <ul>
                <?php echo validation_errors('<li>', '</li>'); ?>
            </ul>
        </div>
    <?php EndIf; ?>

    <?php if ($this->session->flashdata('errors')): ?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <h4><i class="icon fa fa-ban"></i> Ada Kesalahan Teknis !</h4>
            <ul>
                <?php foreach ($this->session->flashdata('errors') as $err): ?>
                    <li><?php echo $err; ?></li>
                <?php endforeach; ?>
            </ul>
        </div>
    <?php EndIf; ?>

    <?php if ($this->session->flashdata('danger')): ?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <h4><i class="icon fa fa-ban"></i> Ada Kesalahan Teknis !</h4>
            <?php echo $this->session->flashdata('danger'); ?>.
        </div>
    <?php EndIf; ?>

    <?php if ($this->session->flashdata('info')): ?>
        <div class="alert alert-info alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <h4><i class="icon fa fa-info"></i> Pemberitahuan !</h4>
            <?php echo $this->session->flashdata('info'); ?>.
        </div>
    <?php EndIf; ?>

    <?php if ($this->session->flashdata('warning')): ?>
        <div class="alert alert-warning alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <h4><i class="icon fa fa-warning"></i> Peringatan !</h4>
            <?php echo $this->session->flashdata('warning'); ?>.
        </div>
    <?php EndIf; ?>

    <?php if ($this->session->flashdata('success')): ?>
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <h4> <i class="icon fa fa-check"></i> Berhasil!</h4>
            <?php echo $this->session->flashdata('success'); ?>.
        </div>
    <?php EndIf; ?>


</div>
<div class="clearfix"></div>