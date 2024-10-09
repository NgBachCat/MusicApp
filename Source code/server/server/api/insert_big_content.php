<?php
  require_once 'connect.php';
  $bigContent_name = $_POST['bigContentName'];
  $genre = $_POST['genre'];
  $sql = "INSERT INTO BIG_CONTENT (NAME) VALUES ('$bigContent_name')";
    if (mysqli_query($conn, $sql)) {
      echo "New record created successfully";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      // Đóng kết nối
    mysqli_close($conn);  
  }
?>