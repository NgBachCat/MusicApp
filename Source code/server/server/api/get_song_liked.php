<?php
  require_once 'connect.php';
  $userId= $_GET['userId'];
  $sql = "SELECT SONG.ID, SONG.NAME , SONG.URL_IMG, SONG.SONG_URL, SINGER.NAME as 'SINGER_NAME' from SONG INNER JOIN SINGER ON SONG.SINGER_ID = SINGER.ID INNER JOIN SONG_LIKED ON SONG.ID = SONG_LIKED.SONG_ID  WHERE SONG_LIKED.USER_ID LIKE '$userId' ";
  $result = $conn->query($sql);
  if($result == null){
    echo $result;
    echo 'khong co kq';
  }
// Check if any results were found
  if ($result->num_rows > 0) {
    // Create an array to store the song info
    $songs = array();
    // Loop through the results and add the song info to the array
    while($row = $result->fetch_assoc()) {
        $song = array(
            "ID" => $row["ID"],
            "NAME" => $row["NAME"],
            "URL_IMG" => $row["URL_IMG"],
            "URL_SONG" => $row["SONG_URL"],
            "SINGER_NAME" => $row["SINGER_NAME"]
        );
        array_push($songs, $song);
    }
    
    // Return the singer info as a JSON string
    echo json_encode($songs);
} else {
    echo "No results found.";
}

// Close the database connection
$conn->close();
?>