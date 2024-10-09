<?php
require_once 'connect.php';
$userId = $_GET['userId'];
if (!empty($userId)) {
  $sql = "INSERT INTO USER(USER_ID)
  SELECT '$userId'
  FROM DUAL
  WHERE NOT EXISTS (SELECT * FROM USER WHERE USER_ID = '$userId')";
  if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
} else {
  echo "Error: userId is empty";
}
// Đóng kết nối
mysqli_close($conn);
?>