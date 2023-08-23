<?php
include_once(__DIR__ . '/../config/Database.php');

$database = new Database();
$db = $database->getConnection();
$dataTable = "posts";
$results_per_page = 10;
$query = "select * FROM " . $dataTable;
$result = mysqli_query($db, $query);
$number_of_result = mysqli_num_rows($result);
$number_of_page = ceil($number_of_result / $results_per_page);

if (!isset($_GET['page'])) {
    $page = 1;
} else {
    $page = $_GET['page'];
}

$page_first_result = ($page - 1) * $results_per_page;

$query = "SELECT posts.*, users.username AS author FROM " . $dataTable . " INNER JOIN users ON posts.user_id = users.id LIMIT " . $page_first_result . ',' . $results_per_page;
$result = mysqli_query($db, $query);
?>

<?php include(__DIR__ . '/../dist/views/tableView.php'); ?>

<div style="text-align: center; padding: 10px 20px 0px; background: var(--primary-color-light);">
    <strong>Page <?php echo $page . " of " . $number_of_page; ?></strong>
</div>
<br>
<?php include(__DIR__ . '/../dist/views/paginationView.php'); ?>
<br>
</body>

</html>