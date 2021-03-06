<!-- <h1><?php echo lang('index_heading');?></h1> -->
<!-- <p><?php echo lang('index_subheading');?></p> -->

<!-- <div id="infoMessage"><?php echo $message;?></div> -->

<div class="row" style="margin-bottom: 10px">
    <div class="col-md-4">
        <!-- <h2 style="margin-top:0px">T00_customer List</h2> -->
        <!-- <?php echo anchor(site_url('t00_customer/create'), 'Tambah', 'class="btn btn-primary"'); ?> -->
        <?php echo anchor('auth/create_user', 'Tambah', 'class="btn btn-primary"')?>
    </div>
    <div class="col-md-4 text-center">
        <div style="margin-top: 4px"  id="message">
            <!-- <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?> -->
            <div id="infoMessage"><?php echo $message;?></div>
        </div>
    </div>
    <div class="col-md-4 text-right">
        <!-- <?php echo anchor(site_url('t00_customer/create'), 'Tambah', 'class="btn btn-primary"'); ?> -->
    </div>
</div>

<div class="box">
    <div class="box-body">
        <table id="mytable" class="table table-bordered table-hover display" style="width: 100%">
            <style media="screen">
                thead input {
                    width: 100%;
                }
            </style>
            <thead>
                <tr>
                    <th>Nama</th>
                    <th>Username</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($users as $user):?>
                <tr>
                    <td><?php echo htmlspecialchars($user->first_name,ENT_QUOTES,'UTF-8');?></td>
                    <td><?php echo htmlspecialchars($user->username,ENT_QUOTES,'UTF-8');?></td>
                    <?php if ($user->id == 1) { ?>
                        <td>&nbsp;</td>
            			<td>&nbsp;</td>
                    <?php } else { ?>
            			<td><?php echo ($user->active) ? anchor("auth/deactivate/".$user->id, lang('index_active_link')) : anchor("auth/activate/". $user->id, lang('index_inactive_link'));?></td>
            			<td><?php echo anchor("auth/edit_user/".$user->id, 'Ubah') . ' | ' .  anchor("t89_users_menus/update/".$user->id, 'Hak Akses');?></td>
                    <?php } ?>
                </tr>
                <?php endforeach;?>
            </tbody>
        </table>
    </div>
</div>

<!-- <table cellpadding=0 cellspacing=10> -->
<!-- <table class="table table-bordered" style="margin-bottom: 10px"> -->
	<!-- <tr>
		<th><?php echo lang('index_fname_th');?></th>
		<th><?php echo lang('index_lname_th');?></th>
		<th><?php echo lang('index_email_th');?></th>
		<th><?php echo lang('index_groups_th');?></th>
		<th><?php echo lang('index_status_th');?></th>
		<th><?php echo lang('index_action_th');?></th>
	</tr> -->
	<!-- <?php foreach ($users as $user):?>
		<tr>
            <td><?php echo htmlspecialchars($user->first_name,ENT_QUOTES,'UTF-8');?></td>
            <td><?php echo htmlspecialchars($user->last_name,ENT_QUOTES,'UTF-8');?></td>
            <td><?php echo htmlspecialchars($user->email,ENT_QUOTES,'UTF-8');?></td>
			<td>
				<?php foreach ($user->groups as $group):?>
					<?php echo anchor("auth/edit_group/".$group->id, htmlspecialchars($group->name,ENT_QUOTES,'UTF-8')) ;?><br />
                <?php endforeach?>
			</td>
			<td><?php echo ($user->active) ? anchor("auth/deactivate/".$user->id, lang('index_active_link')) : anchor("auth/activate/". $user->id, lang('index_inactive_link'));?></td>
			<td><?php echo anchor("auth/edit_user/".$user->id, 'Edit') ;?></td>
		</tr>
	<?php endforeach;?> -->
<!-- </table> -->

<!-- <p><?php echo anchor('auth/create_user', lang('index_create_user_link'))?> | <?php echo anchor('auth/create_group', lang('index_create_group_link'))?></p> -->
