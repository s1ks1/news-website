<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: DELETE");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include_once '../../config/Database.php';
include_once '../../class/Tags.php';

$database = new Database();
$db = $database->getConnection();

$tags = new Tags($db);

$data = json_decode(file_get_contents("php://input"));

if (!empty($data->id)) {
    $tags->id = $data->id;
    if ($tags->delete()) {
        http_response_code(200);
        echo json_encode(array("message" => "Post was deleted."));
    } else {
        http_response_code(503);
        echo json_encode(array("message" => "Unable to delete post."));
    }
} else {
    http_response_code(400);
    echo json_encode(array("messsage" => "Unable to delete post. Data is incomplete"));
}
