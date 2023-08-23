<?php
include_once(__DIR__ . '/../config/Database.php');
include_once(__DIR__ . '/../class/Users.php');

$database = new Database();
$db = $database->getConnection();

$user = new Users($db);

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['register'])) {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    if (strlen($password) < 6) {
        $registerError = "Password should be at least 6 characters long";
    } elseif ($user->isUsernameTaken($username)) {
        $registerError = "Username already taken";
    } else {
        if ($user->register($username, $email, $password)) {
            header("Location: login.php");
            exit;
        } else {
            $registerError = "Registration failed";
        }
    }
}
include('header.php');
include(__DIR__ . '/../dist/views/registrationView.php');
?>
<?php if (isset($registerError)) : ?>
    <p><?php echo $registerError; ?></p>
<?php endif;
include(__DIR__ . '/footer.php')
?>