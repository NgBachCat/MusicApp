<?php
  require_once 'connect.php';
  $playlist_id = $_GET['playlistId'];
  $playlist_name = $_GET['playListName'];
  $sql = "UPDATE USER_PLAYLIST
  SET NAME = '$playlist_name'
  WHERE ID = $playlist_id";
    if (mysqli_query($conn, $sql)) {
      echo "Update successfully";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      // Đóng kết nối
    mysqli_close($conn);  
  }
?>