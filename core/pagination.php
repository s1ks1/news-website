<?php

include_once(__DIR__ . '/../config/Database.php');

$database = new Database();
$db = $database->getConnection();
$dataTable = "posts";
$results_per_page = 10;
$query = "select * from " . $dataTable;
$result = mysqli_query($db, $query);
$number_of_result = mysqli_num_rows($result);

$number_of_page = ceil($number_of_result / $results_per_page);

if (!isset($_GET['page'])) {
    $page = 1;
} else {
    $page = $_GET['page'];
}

$page_first_result = ($page - 1) * $results_per_page;

$query = "SELECT * FROM " . $dataTable . " LIMIT " . $page_first_result . ',' . $results_per_page;
$result = mysqli_query($db, $query);
?>

<table class="table table-striped table-bordered" style="border-radius: 1rem; padding: 1rem; margin: 2rem; background-color: #f0f8f6; filter: drop-shadow(5px 5px 10px var(--accent-color-gray));">
    <thead>
        <tr>
            <th style='width:100%; '></th>
        </tr>
    </thead>
    <tbody>
        <?php
        while ($row = mysqli_fetch_array($result)) {
echo '<tr"><td><h2>' . $row['title'] . '</h2></td></tr>' . '<tr><td><small style="opacity: 0.6;">Written By: ' . '<strong style="color: #4d9dda;">Sinisa</strong>' . '</small></td></tr>' . '<tr><td><p>' . $row['content'] . '</p></td></tr>' . '<tr><td><small style="color: #4d9dda;">#' . $row['tag'] . '</small></td></tr>' 
        . '<tr><td><button style="border: 2px solid var(--accent-color-blue);
border-radius: 0.5rem;
background: var(--accent-color-blue);
color: var(--primary-color-light);
cursor: pointer;
padding: var(--btn-padding);
font-weight: bolder;">Comments</button><br><br><hr></td></tr>';
        }
        ?>
    </tbody>
</table>

<?php

for ($page = 1; $page <= $number_of_page; $page++) {
?>
    <div style='padding: 10px 20px 0px; border-top: solid 1px #CCC;'>
        <strong>Page <?php echo $page . " of " . $number_of_page; ?></strong>
    </div>
<?php
echo '<div class="pagination" style="background: #f0f8f6; width: 100%; text-align: center;"><a style="color: #4d9dda; text-decoration: none;" href = "index.php?page=' . $page . '">' . $page . ' </a></div>';
}
