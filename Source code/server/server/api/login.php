<?php
require_once 'connect.php';

$email = $_GET['email'];
$password = $_GET['password'];

if (!empty($email) && !empty($password)) {
    // Truy vấn để kiểm tra email và mật khẩu
    $sql = "SELECT * FROM USER WHERE USER_ID = ? AND Password = ?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, 'ss', $email, $password);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        // Đăng nhập thành công
        echo json_encode(array(
            "status" => "success",
            "message" => "Login successful",
            "email" => $row['USER_ID']
        ));
    } else {
        // Không tìm thấy email hoặc mật khẩu sai
        echo json_encode(array(
            "status" => "error",
            "message" => "Invalid email or password"
        ));
    }
    mysqli_stmt_close($stmt);
} else {
    echo json_encode(array(
        "status" => "error",
        "message" => "Email and password are required"
    ));
}

// Đóng kết nối
mysqli_close($conn);
?>
