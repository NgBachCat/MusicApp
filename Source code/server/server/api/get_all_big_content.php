<?php
  require_once 'connect.php'; 
  $sql = "SELECT * FROM BIG_CONTENT";
  $result = $conn->query($sql);
     header('Access-Control-Allow-Origin: *');
  if($result == null){
    echo $result;
    echo 'khong co kq';
  }
// Check if any results were found
  if ($result->num_rows > 0) {
    // Create an array to store the singer info
    $bigContents= array();
    
    // Loop through the results and add the singer info to the array
    while($row = $result->fetch_assoc()) {
        $bigContent= array(
            "ID" => $row["ID"],
            "NAME" => $row["NAME"],
        );
        array_push($bigContents, $bigContent);
    }
    // Return the singer info as a JSON string
    echo json_encode($bigContents);
} else {
    echo "No results found.";
}

// Close the database connection
$conn->close();
?>