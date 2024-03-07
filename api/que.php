<?php include_once "./db.php";
if(isset($_POST['text'])){
    $Que->save(['text'=>$_POST['text'],'subject_id'=>0]);
    $maxid=$Que->max('id');
    if(isset($_POST['option'])){
        foreach($_POST['option'] as $option){
          $opt['text']=$option;
          $opt['subject_id']=$maxid;
          $Que->save($opt);
        }
    }
}
to("../back.php?do=que");
