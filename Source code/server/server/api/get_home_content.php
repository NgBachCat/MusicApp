<?php
    require_once 'connect.php';
    $query = "SELECT bc.name AS bigcontent_name, 
    GROUP_CONCAT(pl.id) AS playlist_ids,
    GROUP_CONCAT(pl.name) AS playlist_names,
    GROUP_CONCAT(pl.url_img) AS playlist_images
     FROM DETAIL_BIG_CONTENT dbc 
    INNER JOIN BIG_CONTENT bc ON dbc.ID_BIG_CONTENT = bc.ID 
    INNER JOIN PLAY_LIST pl ON dbc.ID_PLAY_LIST = pl.ID 
    GROUP BY bc.ID ORDER BY RAND() LIMIT 8";
    $result = mysqli_query($conn, $query);

    // Tạo một mảng kết quả từ kết quả truy vấn
    $contents = array();    
    while ($row = mysqli_fetch_assoc($result)) {
        $playlist_ids = array_map('intval', explode(",", $row['playlist_ids']));
        $playlist_names = explode(",", $row['playlist_names']);
        $playlist_images = explode(",", $row['playlist_images']);
        $playlists = array();
        for ($i = 0; $i < count($playlist_ids); $i++) {
            $playlist = array(
                "ID" => $playlist_ids[$i],
                "NAME" => $playlist_names[$i],
                "URL_IMG" => $playlist_images[$i]
            );
            array_push($playlists, $playlist);
        }
        $content= array(
            "BIG_CONTENT_NAME" => $row["bigcontent_name"],
            "PLAY_LISTS" => $playlists
        );
        array_push($contents, $content);
    }
    

// Chuyển đổi mảng kết quả thành đối tượng JSON và xuất ra ngoài
    echo json_encode($contents);
?>