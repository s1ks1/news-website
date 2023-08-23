<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../../config/Database.php';
include_once '../../class/Tags.php';

$database = new Database();
$db = $database->getConnection();

$tags = new Tags($db);

$tags->id = (isset($_GET['id']) && $_GET['id']) ? $_GET['id'] : '0';

$results = $tags->read();

if ($results->num_rows > 0) {
    $tagRecords = array();
    $tagRecords["tags"] = array();
    while ($post = $results->fetch_assoc()) {
        extract($post);
        $tagDetails = array(
            "id" => $id,
            "tag_name" => $tag_name,
        );
        array_push($tagRecords["tags"], $tagDetails);
    }
    http_response_code(200);
    echo json_encode($tagRecords);
} else {
    http_response_code(404);
    echo json_encode(array("meesage" => "No item found."));
}
