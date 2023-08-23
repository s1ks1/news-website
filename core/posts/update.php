<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: PUT");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include_once '../../config/Database.php';
include_once '../../class/Posts.php';

$database = new Database();
$db = $database->getConnection();

$posts = new Posts($db);

$data = json_decode(file_get_contents("php://input"));

if (!empty($data->id) && !empty($data->title) && !empty($data->content) && !empty($data->tag) && !empty($data->category_id) && !empty($data->user_id)) {
    $posts->id = $data->id;
    $posts->title = $data->title;
    $posts->content = $data->content;
    $posts->tag = $data->tag;
    $posts->category_id = $data->category_id;
    $posts->user_id = $data->user_id;

    if ($posts->update()) {
        http_response_code(200);
        echo json_encode(array("message" => "Post was updated."));
    } else {
        http_response_code(503);
        echo json_encode(array("message" => "Unable to update post."));
    }
} else {
    http_response_code(400);
    echo json_encode(array("message" => "Unable to update post. Data is incomplete."));
}
