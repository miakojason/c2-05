<?php $row = $Que->find($_GET['id']); ?>
<fieldset>
<legend>目前位置:首頁>問卷調查><?= $row['text']; ?></legend>
    <h3><?= $row['text']; ?></h3>
</fieldset>