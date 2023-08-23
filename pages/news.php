<?php
include('auth.php');
include_once(__DIR__ . '/../config/Database.php');

$database = new Database;
$conn = $database->getConnection();

if (isset($_GET['post'])) {
    $postId = $_GET['post'];
    $query = "SELECT posts.*, users.username AS author FROM posts INNER JOIN users ON posts.user_id = users.id WHERE posts.id = $postId";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        $post = $result->fetch_assoc();
    } else {
        echo 'Post with that ID doesn\'t exist';
    }
}
$conn->close();
?>
<?php include(__DIR__ . '/../pages/header.php'); ?>
<div class="post-card">
    <h1><?php echo $post['title'] ?></h1>
    <small>Written By: <strong><?php echo $post['author'] ?></strong></small>
    <small>Date: <?php echo $post['created'] ?></small>
    <p><?php echo $post['content'] ?></p>
</div>