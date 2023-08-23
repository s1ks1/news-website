<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../../config/Database.php';
include_once '../../class/Users.php';

$database = new Database();
$db = $database->getConnection();

$users = new Users($db);

$users->id = (isset($_GET['id']) && $_GET['id']) ? $_GET['id'] : '0';

$results = $users->read();

if ($results->num_rows > 0) {
    $userRecords = array();
    $userRecords["users"] = array();
    while ($user = $results->fetch_assoc()) {
        extract($user);
        $userDetails = array(
            "id" => $id,
            "username" => $username,
            "email" => $email,
            "password" => $password,
            "created" => $created
        );
        array_push($userRecords["users"], $userDetails);
    }
    http_response_code(200);
    echo json_encode($userRecords);
} else {
    http_response_code(404);
    echo json_encode(array("message" => "No users found."));
}
