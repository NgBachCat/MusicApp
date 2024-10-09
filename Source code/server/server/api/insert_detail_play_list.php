  <?php
    require_once 'connect.php';
    $idPlaylist = $_POST['playListId'];
    $idSongs = $_POST['songIds'];
    if($idSongs != null){
      foreach($idSongs as $idSong){
        $sql = "INSERT INTO DETAIL_PLAYLIST (ID_PLAYLIST,ID_SONG) VALUES ('$idPlaylist','$idSong')";
        mysqli_query($conn, $sql);
        // Đóng kết nối 
      }
    }else{
      echo("loi nuull");
    }
    mysqli_close($conn); 
  ?>