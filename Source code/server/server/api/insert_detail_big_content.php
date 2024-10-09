<?php
  require_once 'connect.php';
  $idBigContent = $_POST['bigContentId'];
  $idPlayLists = $_POST['playListId'];
  foreach($idPlayLists as $idPlayList){
    $sql = "INSERT INTO DETAIL_BIG_CONTENT (ID_BIG_CONTENT,ID_PLAY_LIST) VALUES ('$idBigContent','$idPlayList')";
    mysqli_query($conn, $sql);
    // Đóng kết nối 
  }
  mysqli_close($conn); 
?>