<div class="col-md-12 ">
    <h4><i class="fa fa-bed"></i>&nbsp;&nbsp;Detail Kamar</h4>
    <input type="hidden" id="categories" value='<?php echo json_encode($categories);?>' />
    <table class="table" id="table-room">
        <thead>
            <tr>
                <th>#</th>
                <th width="250">Kategori</th>
                <th width="250">No Kamar</th>
                <th>Kapasitas</th>
                <th>Jumlah Penghuni</th>
                <th>Harga / Hari</th>
                <th>Durasi (Hari)</th>
                <th>Total</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php $i = 1; foreach($detail_rooms as $room): ?>
                <tr class='room-row' data-id='<?php echo $i;?>'>
                    <td class='number'><?php echo $i;?></td>
                    <td><select class='category_id select2' required='required' data-selected='<?php echo $room->category_id;?>' data-id='<?php echo $i;?>'></select></td>
                    <td><select name='room_id[]' class='room_id select2' data-number='<?php echo $room->number;?>' data-selected='<?php echo $room->room_id;?>' required='required' data-id='<?php echo $i;?>'></select></td>
                    <td><input name='capacity[]' type='text' class='form-control capacity' value='<?php echo $room->capacity;?>' readonly='readonly' data-id='<?php echo $i;?>'></td>
                    <td><input name='occupant[]' type='number' min='1' value='<?php echo $room->occupant;?>' class='form-control occupant' required='required' data-id='<?php echo $i;?>'></td>
                    <td><input name='price[]' type='text' class='form-control price' value='<?php echo $room->price;?>' readonly='readonly' data-id='<?php echo $i;?>'></td>
                    <td><input name='duration[]' type='text' class='form-control duration' value='<?php echo $room->duration;?>' readonly='readonly' data-id='<?php echo $i;?>'></td></td>
                    <td><input name='total[]' type='text' class='form-control total' value='<?php echo $room->total;?>' readonly='readonly' data-id='<?php echo $i;?>'></td></td>
                    <td><a href="javascript:void(0);" class="btn btn-sm btn-danger delete-room" id="btn-remove-room" data-id='<?php echo $i;?>'><i class="fa fa-trash"></i></a></td>
                </tr>
            <?php $i++; EndForeach; ?>
        </tbody>
        <tfoot>
            <tr>
                <th colspan="8"></th>
                <th>
                    <a href="javascript:void(0);" class="btn btn-sm btn-success" id="btn-add-room">
                        <i class="fa fa-plus"></i>
                    </a>
                </th>
            </tr>
        </tfoot>
    </table>
</div>