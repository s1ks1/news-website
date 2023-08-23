<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../../config/Database.php';
include_once '../../class/Posts.php';

$database = new Database();
$db = $database->getConnection();

$posts = new Posts($db);

$posts->id = (isset($_GET['id']) && $_GET['id']) ? $_GET['id'] : '0';

$results = $posts->read();

if ($results->num_rows > 0) {
    $postRecords = array();
    $postRecords["posts"] = array();
    while ($post = $results->fetch_assoc()) {
        extract($post);
        $postDetails = array(
            "id" => $id,
            "title" => $title,
            "content" => $content,
            "tag" => $tag,
            "category_id" => $category_id,
            "created" => $created,
            "modified" => $modified,
            "user_id" => $user_id
        );
        array_push($postRecords["posts"], $postDetails);
    }
    http_response_code(200);
    echo json_encode($postRecords);
} else {
    http_response_code(404);
    echo json_encode(array("meesage" => "No item found."));
}
