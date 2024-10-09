<?php
  require_once 'connect.php';
  $userId = $_GET['userId'];
  $sql = "SELECT * from USER_PLAYLIST WHERE USER_ID = '$userId'";
  $result = $conn->query($sql);
  if($result == null){
    echo $result;
    echo 'khong co kq';
  }
// Check if any results were found
  if ($result->num_rows > 0) {
      $playLists = array();
    // Create an array to store the song info
    // Loop through the results and add the song info to the array
    while($row = $result->fetch_assoc()) {
        $playList = array(
            "ID" => $row["ID"],
            "NAME" => $row["NAME"],
        );
        array_push($playLists, $playList);
    }
    echo json_encode($playLists);
    // Return the singer info as a JSON string
  
} else {
    echo "No results found.";
}

// Close the database connection
$conn->close();
?>