  <?php
    require_once 'connect.php';
    $playlistId = $_GET['playlistId'];
    $songId = $_GET['songId'];
    if($songId != null){
        $sql = "SELECT * FROM DETAIL_USER_PLAYLIST WHERE SONG_ID = $songId AND PLAYLIST_ID = $playlistId";
        $result = mysqli_query($conn, $sql);
        if(mysqli_num_rows($result)>0)
        {
            echo json_encode("noComplete");
        }else
        {
            $sql2 = "INSERT INTO DETAIL_USER_PLAYLIST (PLAYLIST_ID,SONG_ID) VALUES ($playlistId,$songId)";
            mysqli_query($conn, $sql2);
            echo json_encode("Complete");
        }
        // Đóng kết nối 
    }else{
      echo("loi nuull");
    }
  