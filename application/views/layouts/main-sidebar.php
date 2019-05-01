<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?php echo photo();?>" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p><?php echo profile()->first_name." ".profile()->last_name; ?></p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">Menu Utama</li>
             <?php echo sidebarMenu(); ?>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>