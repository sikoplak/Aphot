<div class="col-md-6">
    <h4><i class="fa fa-bell"></i>&nbsp;&nbsp;Extra</h4>
    <table class="table" id="table-extra">
        <thead>
            <tr>
                <th><input type="checkbox" id="checkbox-all-extra" /></th>
                <th>Nama</th>
                <th>Harga</th>
            </tr>
        </thead>
        <tbody>
            <?php if(count($extra) > 0): ?>
                <?php foreach($extra as $ex): ?>
                <?php $checked = in_array($ex->extra_id, $extraSelected) ? "checked" : "";  ?>
                <?php $rowColor = in_array($ex->extra_id, $extraSelected) ? "warning" : "";  ?>
                <tr class="<?php echo $rowColor;?>">
                    <td><input type="checkbox" class="checkbox-extra checkbox-other" name="extra_id[]" data-cost="<?php echo $ex->extra_cost;?>" value="<?php echo $ex->extra_id;?>" <?php echo $checked;?> /></td>
                    <td><?php echo $ex->extra_name;?></td>
                    <td><?php echo $ex->extra_cost;?></td>
                </tr>
                <?php EndForeach; ?>
            <?php Else: ?>
            <tr>
                <td colspan='2' class='text-center'>-- tidak ada data --</td>
            </tr>
            <?php EndIf; ?>
        </tbody>
    </table>
</div>