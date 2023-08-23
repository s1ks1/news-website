<?php
include_once(__DIR__ . '/../config/Database.php');

$database = new Database();
$db = $database->getConnection();

$query = "SELECT id, category_name FROM categories";
$stmt = $db->prepare($query);
$stmt->execute();

$result = $stmt->get_result();

$options = "";
while ($row = $result->fetch_assoc()) {
    $options .= "<option value='{$row['id']}'>{$row['category_name']}</option>";
}

$stmt->close();
$db->close();

include (__DIR__ . '/../dist/views/categoryView.php');
