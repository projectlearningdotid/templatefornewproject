<!-- <!doctype html>
<html>
    <head>
        <title>harviacode.com - codeigniter crud generator</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>"/>
        <style>
            body{
                padding: 15px;
            }
        </style>
    </head>
    <body>
        <h2 style="margin-top:0px">T89_users_menus <?php echo $button ?></h2> -->
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title"><?php echo $this->uri->segment(2) == 'create' ? 'Tambah' : 'Ubah' ?></h3>
            </div>
            <form action="<?php echo $action; ?>" method="post" class="form-horizontal">
                <div class="box-body">
					<!-- <div class="form-group">
                        <label class="col-sm-2 control-label" for="int">Idusers <?php echo form_error('idusers') ?></label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" name="idusers" id="idusers" placeholder="Idusers" value="<?php echo $idusers; ?>" />
                        </div>
                    </div> -->
					<!-- <div class="form-group">
                        <label class="col-sm-2 control-label" for="int">Idmenus <?php echo form_error('idmenus') ?></label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" name="idmenus" id="idmenus" placeholder="Idmenus" value="<?php echo $idmenus; ?>" />
                        </div>
                    </div> -->
					<!-- <div class="form-group">
                        <label class="col-sm-2 control-label" for="int">Rights <?php echo form_error('rights') ?></label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" name="rights" id="rights" placeholder="Rights" value="<?php echo $rights; ?>" />
                        </div>
                    </div> -->
                    <?php foreach($dataUsers as $data) { ?>
                    <div class="row">
                        <div class="col-sm-1">
                            Nama:
                        </div>
                        <div class="col-sm-3">
                            <?php echo $data->first_name ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-1">
                            Username:
                        </div>
                        <div class="col-sm-3">
                            <?php echo $data->username ?>
                        </div>
                    </div>
                        <?php break ?>
                    <?php } ?>
                    <div class="row">
                        <div class="col-8">
                            <table class="table table-bordered" style="margin-bottom: 10px">
                                <tr>
                                    <th>MODUL</th>
                                    <th class="text-center">TAMBAH</th>
                                    <th class="text-center">UBAH</th>
                                    <th class="text-center">HAPUS</th>
                                </tr>
                                <?php foreach($dataUsers as $data) { ?>
                                    <input type="hidden" name="idusersmenus[]" value="<?php echo $data->idusersmenus; ?>" />
                                    <input type="hidden" name="idusers" value="<?php echo $data->idusers; ?>" />
                                    <tr>
                                        <td>
                                            <?php echo $data->Menus; ?>
                                        </td>
                                        <?php
                                        $tambah = "";
                                        $ubah = "";
                                        $hapus = "";
                                        switch ($data->rights) {
                                            case 1:
                                                $tambah = "checked";
                                                break;
                                            case 2:
                                                $ubah = "checked";
                                                break;
                                            case 3:
                                                $tambah = "checked";
                                                $ubah = "checked";
                                                break;
                                            case 4:
                                                $hapus = "checked";
                                                break;
                                            case 5:
                                                $tambah = "checked";
                                                $hapus = "checked";
                                                break;
                                            case 6:
                                                $ubah = "checked";
                                                $hapus = "checked";
                                                break;
                                            case 7:
                                                $tambah = "checked";
                                                $ubah = "checked";
                                                $hapus = "checked";
                                                break;
                                        }
                                        ?>
                                        <td class="text-center">
                                            <input value="1" name="_1_<?php echo $data->idusersmenus ?>" class="form-check-input" type="checkbox" <?php echo $tambah ?>>
                                        </td>
                                        <td class="text-center">
                                            <input value="2" name="_2_<?php echo $data->idusersmenus ?>" class="form-check-input" type="checkbox" <?php echo $ubah ?>>
                                        </td>
                                        <td class="text-center">
                                            <input value="4" name="_4_<?php echo $data->idusersmenus ?>" class="form-check-input" type="checkbox" <?php echo $hapus ?>>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </table>
                        </div>
                    </div>
        			<!-- <button type="submit" class="btn btn-primary"><?php echo $button ?></button> -->
        			<!-- <a href="<?php echo site_url('user-management') ?>" class="btn btn-secondary">Kembali</a> -->
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <button type="submit" class="btn btn-primary"><?php echo $button ?></button>
                    <a href="<?php echo site_url('auth') ?>" class="btn btn-default">Kembali</a>
                </div>

				<!-- <input type="hidden" name="idusersmenus" value="<?php echo $idusersmenus; ?>" /> -->
			</form>
        </div>
    <!-- </body>
</html> -->
