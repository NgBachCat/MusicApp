<?php
  require_once 'connect.php';
  $playListId = $_GET['playlistId'];
  $sql = "DELETE FROM USER_PLAYLIST WHERE ID = $playListId";
    if (mysqli_query($conn, $sql)) {
      echo "New record created successfully";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      // Đóng kết nối
    mysqli_close($conn);  
  }
?>