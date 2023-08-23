<?php
include("auth.php");
require(__DIR__ . '/../config/Database.php');
include('header.php');
@include(__DIR__ . '/../dist/views/dashboardView.php');

$db = new Database();
$conn = $db->getConnection();

$user_id = $_SESSION['user_id'];
$query = "SELECT * FROM posts WHERE user_id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        include('../dist/views/postListView.php');
    }
} else {
?> <small style="display: flex; justify-content: center">No posts yet, want to create one? <a href="../pages/post.php" style="text-decoration: none; color: var(--accent-color-orange)">Click here</a></small><?php
                                                                                                                                                                                                            }

                                                                                                                                                                                                            include('footer.php');
