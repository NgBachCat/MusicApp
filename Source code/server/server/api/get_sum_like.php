<?php
require_once 'connect.php';
$songId = $_GET['songId'];
$sql = "SELECT COUNT(*) as SUM_LIKE FROM SONG_LIKED WHERE SONG_LIKED.SONG_ID = $songId GROUP BY SONG_ID";
$result = $conn->query($sql);
if(mysqli_num_rows($result) > 0){
  $row = mysqli_fetch_assoc($result);
  echo json_encode($row['SUM_LIKE']);
} else {
  echo json_encode("0");
}
?>