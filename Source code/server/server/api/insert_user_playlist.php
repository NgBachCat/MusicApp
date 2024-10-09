<?php
  require_once 'connect.php';
  $user_id = $_GET['userId'];
  $playlist_name = $_GET['playListName'];
  $sql = "INSERT INTO USER_PLAYLIST(NAME,USER_ID)
  VALUES ('$playlist_name','$user_id')";
    if (mysqli_query($conn, $sql)) {
      echo "New record created successfully";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      // Đóng kết nối
    mysqli_close($conn);  
  }
?>