<?php
  require_once 'connect.php';
  $playlist_name = $_POST['playListName'];
  $url_img = $_POST['playListUrlImg'];

// Thực hiện truy vấn SQL để thêm bản ghi mới vào bảng playlist
  $sql = "INSERT INTO PLAY_LIST (NAME, URL_IMG) VALUES ('$playlist_name', '$url_img')";
  if($playlist_name!=null && $url_img !=null){
    if (mysqli_query($conn, $sql)) {
      echo "New record created successfully";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      // Đóng kết nối
    mysqli_close($conn);  
  }
  }else{
    echo("lỗi null");
  }


?>