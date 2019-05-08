<div class="col-md-6">
    <h4><i class="fa fa-fire-extinguisher"></i>&nbsp;&nbsp;Servis</h4>
    <table class="table" id="table-service">
        <thead>
            <tr>
                <th><input type="checkbox" id="checkbox-all-service" /></th>
                <th>Nama</th>
                <th>Harga</th>
            </tr>
        </thead>
        <tbody>
            <?php if(count($service) > 0): ?>
                <?php foreach($service as $s): ?>
                <?php $checked = in_array($s->services_id, $serviceSelected) ? "checked" : "";  ?>
                <?php $rowColor = in_array($s->services_id, $serviceSelected) ? "warning" : "";  ?>
                <tr class="<?php echo $rowColor;?>">
                    <td><input type="checkbox" class="checkbox-service checkbox-other" name="service_id[]" data-cost="<?php echo $s->services_cost;?>" value="<?php echo $s->services_id;?>" <?php echo $checked;?> /></td>
                    <td><?php echo $s->services_name;?></td>
                    <td><?php echo $s->services_cost;?></td>
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