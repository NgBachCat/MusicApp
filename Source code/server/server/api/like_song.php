<?php
require_once 'connect.php';
$userId = $_GET['userId'];
$songId = $_GET['songId'];
if (!empty($userId)) {
  $sql = "SELECT * FROM SONG_LIKED WHERE SONG_ID = $songId AND USER_ID LIKE '$userId'";
  $result = mysqli_query($conn, $sql);
      if(mysqli_num_rows($result)>0)
        {
            $sql2 = "DELETE FROM SONG_LIKED WHERE SONG_ID = $songId AND USER_ID LIKE '$userId'";
            mysqli_query($conn, $sql2);
        }else {
            $sql3 = "INSERT INTO SONG_LIKED(SONG_ID,USER_ID) VALUES('$songId','$userId')";
            mysqli_query($conn, $sql3);
        }
} else {
  echo "Error: userId is empty";
}
// Đóng kết nối
mysqli_close($conn);
?>