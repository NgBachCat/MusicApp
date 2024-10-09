<?php
  require_once 'connect.php';
  $singer_name = $_POST['singerName'];
  $url_img = $_POST['singerUrlImg'];

// Thực hiện truy vấn SQL để thêm bản ghi mới vào bảng playlist
  $sql = "INSERT INTO SINGER (NAME, URL_IMG) VALUES ('$singer_name', '$url_img')";
  if($singer_name!=null && $url_img !=null){
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