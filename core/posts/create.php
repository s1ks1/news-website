<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include_once('../../config/Database.php');
include_once('../../class/Posts.php');

$database = new Database();
$db = $database->getConnection();

$posts = new Posts($db);

$data = json_decode(file_get_contents("php://input"));

if (!empty($data->title) && !empty($data->content) && !empty($data->tag) && !empty($data->category_id) && !empty($data->user_id)) {
    $posts->title = $data->title;
    $posts->content = $data->content;
    $posts->tag = $data->tag;
    $posts->category_id = $data->category_id;
    $posts->user_id = $data->user_id;

    if ($posts->create()) {
        http_response_code(201);
        echo json_encode(array("message" => "Post was created."));
    } else {
        http_response_code(503);
        echo json_encode(array("message" => "Unable to create item"));
    }
} else {
    http_response_code(400);
    echo json_encode(array("message" => "Unable to create post. Data is incomplete."));
}
