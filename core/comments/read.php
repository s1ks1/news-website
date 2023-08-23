<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../../config/Database.php';
include_once '../../class/Comments.php';

$database = new Database();
$db = $database->getConnection();

$comments = new Comments($db);
$comments->id = (isset($_GET['id']) && $_GET['id']) ? $_GET['id'] : '0';
$results = $comments->read();

if ($results->num_rows > 0) {
    $commentRecords = array();
    $commentRecords["comments"] = array();
    while ($post = $results->fetch_assoc()) {
        extract($post);
        $commentDetails = array(
            "id" => $id,
            "content" => $content,
            "post_id" => $post_id,
            "user_id" => $user_id,
            "created" => $created,
        );
        array_push($commentRecords["comments"], $commentDetails);
    }
    http_response_code(200);
    echo json_encode($commentRecords);
} else {
    http_response_code(404);
    echo json_encode(array("meesage" => "No item found."));
}
