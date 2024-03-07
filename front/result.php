<?php $row = $Que->find($_GET['id']); ?>
<fieldset>
    <legend>目前位置:首頁>問卷調查><?= $row['text']; ?></legend>
    <h3><?= $row['text']; ?></h3>
    <?php
    $rows = $Que->all(['subject_id' => $_GET['id']]);
    foreach ($rows as $row) {
        $total=$Que->find($_GET['id'])['vote'];
        $rate=round($row['vote']/$total,2);
    ?>
        <div style="display:flex;">
            <div style="width:50%"><?=$row['text'];?></div>
            <div class="clo" style="width:<?=40*$rate;?>%"></div>
            <div style="width:10%"><?=$row['vote'];?>票(<?=$rate*100;?>%)</div>
        </div>
    <?php
    }
    ?>
</fieldset>