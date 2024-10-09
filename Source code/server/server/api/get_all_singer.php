<?php
  require_once 'connect.php';
   header('Access-Control-Allow-Origin: *');
  $sql = "SELECT * FROM SINGER";
  $result = $conn->query($sql);
    if($result == null){
        echo 'khong co kq';
      }
// Check if any results were found
if ($result->num_rows > 0) {
    // Create an array to store the singer info
    $singers = array();
    
    // Loop through the results and add the singer info to the array
    while($row = $result->fetch_assoc()) {
        $singer = array(
            "ID" => $row["ID"],
            "NAME" => $row["NAME"],
            "URL_IMG" => $row["URL_IMG"]
        );
        array_push($singers, $singer);
    }
    // Return the singer info as a JSON string
    echo json_encode($singers);
} else {
    echo "No results found.";
}

// Close the database connection
$conn->close();
?>