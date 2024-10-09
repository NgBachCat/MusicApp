<?php
  require_once 'connect.php';
  $sql = "SELECT * FROM PLAY_LIST ORDER BY RAND() LIMIT 4";
  $result = $conn->query($sql);
  if($result == null){
    echo $result;
    echo 'khong co kq';
  }
// Check if any results were found
  if ($result->num_rows > 0) {
    // Create an array to store the singer info
    $playLists = array();
    
    // Loop through the results and add the singer info to the array
    while($row = $result->fetch_assoc()) {
        $playList = array(
            "ID" => $row["ID"],
            "NAME" => $row["NAME"],
            "URL_IMG" => $row["URL_IMG"]
        );
        array_push($playLists, $playList);
    }
    
    // Return the singer info as a JSON string
    echo json_encode($playLists);
} else {
    echo "No results found.";
}

// Close the database connection
$conn->close();
?>