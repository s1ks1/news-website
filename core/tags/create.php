<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include_once('../../config/Database.php');
include_once('../../class/Tags.php');

$database = new Database();
$db = $database->getConnection();

$tags = new Tags($db);

$data = json_decode(file_get_contents("php://input"));

if (!empty($data->tag_name)) {
    $tags->tag_name = $data->tag_name;

    if ($tags->create()) {
        http_response_code(201);
        echo json_encode(array("message" => "Tag was created."));
    } else {
        http_response_code(503);
echo json_encode(array("message" => "Unable to create item"));
    }
} else {
    http_response_code(400);
echo json_encode(array("message" => "Unable to create tag. Data is incomplete."));
}
