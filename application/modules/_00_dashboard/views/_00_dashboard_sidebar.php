<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <!-- dashboard -->
            <li><a href="<?php echo site_url() ?>"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>

            <?php if ($this->ion_auth->logged_in()) { ?>

            <!-- master -->
            <li class="treeview
            <?php
            switch ($this->uri->segment(1)) {
                case 't99_company':
                case 't88_menus':
                case 'auth':
                case 't98_akun':
                case 't97_saldoawal':
                case 't89_users_menus':
                case 't00_sekolah':
                case 't01_tahunajaran':
                    echo 'active';
                    break;
            }
            ?>
            ">
                <a href="#">
                    <i class="fa fa-files-o"></i> <span>Master</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <?php if ($this->ion_auth->is_admin()) { ?>
                    <li <?php echo $this->uri->segment(1) == 't99_company' ? 'class="active"' : ''; ?>><a href="<?php echo site_url() ?>t99_company"><i class="fa fa-circle-o"></i> Company</a></li>
                    <li <?php echo $this->uri->segment(1) == 't88_menus' ? 'class="active"' : ''; ?>><a href="<?php echo site_url() ?>t88_menus"><i class="fa fa-circle-o"></i> Menu</a></li>
                    <li <?php echo ($this->uri->segment(1) == 'auth' or $this->uri->segment(1) == 't89_users_menus') ? 'class="active"' : ''; ?>><a href="<?php echo site_url() ?>auth"><i class="fa fa-circle-o"></i> User</a></li>
                    <!-- <li <?php echo $this->uri->segment(1) == 't98_akun' ? 'class="active"' : ''; ?>><a href="<?php echo site_url() ?>t98_akun"><i class="fa fa-circle-o"></i> Akun</a></li> -->
                    <!-- <li <?php echo $this->uri->segment(1) == 't97_saldoawal' ? 'class="active"' : ''; ?>><a href="<?php echo site_url() ?>t97_saldoawal"><i class="fa fa-circle-o"></i> Saldo Awal</a></li> -->
                    <!-- divider -->
                    <!-- <li role="presentation" class="divider"></li> -->
                    <!-- <hr> -->
                    <!-- <div class="dropdown-divider"></div> -->
                    <li><a href="#"><hr></a></li>
                    <?php } ?>
                    <li <?php echo $this->uri->segment(1) == 't00_sekolah' ? 'class="active"' : ''; ?>><a href="<?php echo site_url() ?>t00_sekolah"><i class="fa fa-circle-o"></i> Sekolah</a></li>
                    <li <?php echo $this->uri->segment(1) == 't01_tahunajaran' ? 'class="active"' : ''; ?>><a href="<?php echo site_url() ?>t01_tahunajaran"><i class="fa fa-circle-o"></i> Tahun Ajaran</a></li>
                </ul>
            </li>

            <!-- transaksi -->
            <li class="treeview
            <?php
            switch ($this->uri->segment(1)) {
                case 't30_jo':
                case 't32_csd':
                    echo 'active';
                    break;
            }
            ?>
            ">
                <a href="#">
                    <i class="fa fa-files-o"></i> <span>Transaksi</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li <?php echo $this->uri->segment(1) == 't30_jo' ? 'class="active"' : ''; ?>><a href="<?php echo site_url() ?>t30_jo"><i class="fa fa-circle-o"></i> Job Order</a></li>
                    <li <?php echo $this->uri->segment(1) == 't32_csd' ? 'class="active"' : ''; ?>><a href="<?php echo site_url() ?>t32_csd"><i class="fa fa-circle-o"></i> Cost Sheet</a></li>
                    <!-- <li><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li> -->
                </ul>
            </li>

            <!-- laporan -->
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-files-o"></i> <span>Laporan</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
                    <li><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
                </ul>
            </li>

            <?php }  // end if ($this->ion_auth->logged_in()) {  ?>

            <!-- login or logout -->
            <?php if ($this->session->userdata('user_id') != "") { ?>
            <li><a href="<?php echo site_url() ?>auth/logout"><i class="fa fa-circle-o text-red"></i> <span>Logout</span></a></li>
            <?php } else { ?>
            <li><a href="<?php echo site_url() ?>auth/login"><i class="fa fa-circle-o text-green"></i> <span>Login</span></a></li>
            <?php }?>
            <!-- /Login or logout -->

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
