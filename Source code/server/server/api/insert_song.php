<?php
require_once 'connect.php';

// Lấy các tham số từ URL query
$song_name = $_GET['songName'];
$singer_id = $_GET['singerId'];
$url_img = $_GET['songUrlImg'];
$song_url = $_GET['songUrl'];
$genre = $_GET['genre'];

// Kiểm tra xem tất cả các tham số đã được cung cấp chưa
if(isset($song_name, $singer_id, $url_img, $song_url, $genre)) {
    // Sử dụng các tham số để thêm bản ghi mới vào cơ sở dữ liệu
    $sql = "INSERT INTO SONG (NAME, URL_IMG, SINGER_ID, GENRE, SONG_URL) VALUES ('$song_name', '$url_img', '$singer_id', '$genre', '$song_url')";
    if (mysqli_query($conn, $sql)) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
} else {
    // Thông báo nếu thiếu một hoặc nhiều tham số
    echo "Missing parameters.";
}

// Đóng kết nối
mysqli_close($conn);
?>
