<?php
session_start();

include_once(__DIR__ . '/../config/Database.php');
include_once(__DIR__ . '/../class/Users.php');

$database = new Database();
$db = $database->getConnection();
$user = new Users($db);

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['login'])) {
	$username = $_POST['username'];
	$password = $_POST['password'];

	if ($user->login($username, $password)) {
		$_SESSION['user_id'] = $user->id;
		header("Location: dashboard.php");
		exit;
	} else {
		$loginError = "Invalid username or password";
	}
}

include(__DIR__ . '/../pages/header.php');
include(__DIR__ . '/../dist/views/loginView.php');
include(__DIR__ . '/footer.php');
