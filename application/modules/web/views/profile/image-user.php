<div class="box-body box-profile">
    <div id="crop-avatar">

        <div class="avatar-view">
            <img class="profile-user-img img-responsive img-circle" src="<?php echo photo();?>"
                alt="User profile picture">
            <h3 class="profile-username text-center">
                <?php echo profile()->first_name; ?></h3>
            <p class="text-muted text-center"><?php echo profile()->last_name; ?></p>

            <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                    <b>Akses</b> <a class="pull-right"><?php echo roles(); ?></a>
                </li>
                <li class="list-group-item">
                    <b>Tanggal Terdaftar</b> <a
                        class="pull-right"><?php echo !is_null($profile->created_on) ? date('Y-m-d H:i:s', $profile->created_on) : "-"; ?></a>
                </li>
                <li class="list-group-item">
                    <b>Terakhir Login</b> <a
                        class="pull-right"><?php echo !is_null($profile->last_login) ? date('Y-m-d H:i:s', $profile->last_login) : "-"; ?></a>
                </li>
            </ul>

            <a href="#" class="btn btn-primary btn-block"><b><i class="fa fa-folder-open"></i> Ganti Foto Profil</b></a>
        </div>




        <!-- Cropping modal -->
        <div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog"
            tabindex="-1">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <form class="avatar-form" action="<?php echo base_url("api/user/upload_image")?>"
                        enctype="multipart/form-data" method="post">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title" id="avatar-modal-label">Foto Profi</h4>
                        </div>
                        <div class="modal-body">
                            <div class="avatar-body">

                                <!-- Upload image and data -->
                                <div class="avatar-upload">
                                    <input type="hidden" class="avatar-src" name="avatar_src">
                                    <input type="hidden" class="avatar-data" name="avatar_data">
                                    <label class="file-upload btn btn-primary">
                                        <i class="fa fa-folder-open"></i> Pilih Gambar <input type="file"
                                            class="avatar-input" id="avatarInput" class="fileinput" name="avatar_file"
                                            accept="image/x-png,image/gif,image/jpeg">
                                    </label>
                                </div>

                                <!-- Crop and preview -->
                                <div class="row">
                                    <div class="col-md-9">
                                        <div class="avatar-wrapper"></div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="avatar-preview preview-lg"></div>
                                        <div class="avatar-preview preview-md"></div>
                                        <div class="avatar-preview preview-sm"></div>
                                    </div>
                                </div>

                                <div class="row avatar-btns">
                                    <div class="col-md-9">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-primary" data-method="rotate"
                                                data-option="-90" title="Rotate -90 degrees">Putar Kiri</button>
                                            <button type="button" class="btn btn-primary" data-method="rotate"
                                                data-option="-15">-15deg</button>
                                            <button type="button" class="btn btn-primary" data-method="rotate"
                                                data-option="-30">-30deg</button>
                                            <button type="button" class="btn btn-primary" data-method="rotate"
                                                data-option="-45">-45deg</button>
                                        </div>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-primary" data-method="rotate"
                                                data-option="90" title="Rotate 90 degrees">Putar Kanan</button>
                                            <button type="button" class="btn btn-primary" data-method="rotate"
                                                data-option="15">15deg</button>
                                            <button type="button" class="btn btn-primary" data-method="rotate"
                                                data-option="30">30deg</button>
                                            <button type="button" class="btn btn-primary" data-method="rotate"
                                                data-option="45">45deg</button>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <button type="submit"
                                            class="btn btn-primary btn-block avatar-save">Selesai</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div><!-- /.modal -->

        <!-- Loading state -->
        <div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>


    </div>
</div><!-- /.box-body -->