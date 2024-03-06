<?php include_once "./db.php";
$row = $News->find($_POST['id']);
if ($Log->count(['news' => $_POST['id'], 'acc' => $_SESSION['user']]) > 0) {
    $Log->del(['news' => $_POST['id'], 'acc' => $_SESSION['user']]);
    $row['good']--;
} else {
    $Log->save(['news' => $_POST['id'], 'acc' => $_SESSION['user']]);
    $row['good']++;
}
$News->save($row);
