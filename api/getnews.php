<?php include_once "./db.php";
$rows = $News->all(['id' => $_POST['id']]);
foreach ($rows as $row) {
?>
    <pre data-id=<?=$row['id'];?>><?= $row['text'];?></pre>
<?php
}
?>