<?php
$loggedIn = isset($_SESSION['username']);
$current = ($curPageName = substr($_SERVER["SCRIPT_NAME"], strrpos($_SERVER["SCRIPT_NAME"], "/") + 1) == "index.php") ? '<a href="#"><h2>Newster</h2></a>' : '<a href="../index.php"><h2>Newster</h2></a>';
$home = ($curPageName = substr($_SERVER["SCRIPT_NAME"], strrpos($_SERVER["SCRIPT_NAME"], "/") + 1) == "index.php") ? '<a href="#">Home</a>' : '<a href="../index.php">Home</a>';
$contact = ($curPageName = substr($_SERVER["SCRIPT_NAME"], strrpos($_SERVER["SCRIPT_NAME"], "/") + 1) == "index.php") ? '<a href="pages/contact.php">Contact</a>' : '<a href="contact.php">Contact</a>';
$about = ($curPageName = substr($_SERVER["SCRIPT_NAME"], strrpos($_SERVER["SCRIPT_NAME"], "/") + 1) == "index.php") ? '<a href="pages/about.php">About</a>' : '<a href="about.php">About</a>';

if ($loggedIn) {
    $logDash = ($curPageName = substr($_SERVER["SCRIPT_NAME"], strrpos($_SERVER["SCRIPT_NAME"], "/") + 1) == "index.php") ? '<a href="../news-website/pages/dashboard.php"><button class="btn-secondary">Profile</button></a>' : '<a href="../pages/dashboard.php"><button class="btn-secondary">Profile</button></a>';
} else {
    $logDash = ($curPageName = substr($_SERVER["SCRIPT_NAME"], strrpos($_SERVER["SCRIPT_NAME"], "/") + 1) == "index.php") ? '<a href="../news-website/pages/login.php"><button class="btn-secondary">Log In</button></a>' : '<a href="../pages/login.php"><button class="btn-secondary">Log In</button></a>';
}
if ($loggedIn) {
    $register = ($curPageName = substr($_SERVER["SCRIPT_NAME"], strrpos($_SERVER["SCRIPT_NAME"], "/") + 1) == "index.php") ? '<a href="../news-website/pages/logout.php"><button class="btn-primary logout">Log Out</button></a>' : '<a href="../pages/logout.php"><button class="btn-primary logout">Log Out</button></a>';
} else {
    $register = ($curPageName = substr($_SERVER["SCRIPT_NAME"], strrpos($_SERVER["SCRIPT_NAME"], "/") + 1) == "index.php") ? '<a href="../news-website/pages/registration.php"><button class="btn-primary register">Sign Up</button></a>' : '<a href="../pages/registration.php"><button class="btn-primary register">Sign Up</button></a>';
}
?>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="dist/css/main.css">
    <link rel="stylesheet" href="../dist/css/main.css">
    <title>Newster</title>
</head>

<body>

    <header class="navigation">
        <nav class="navbar" id="navBar">
            <div class="logo">
                <?php echo $current ?>
            </div>
            <div class="nav-items">
                <div class="nav-list">
                    <?php echo $home ?>
                    <?php echo $contact ?>
                    <?php echo $about ?>
                    <?php echo $logDash ?>
                    <?php echo $register ?>
                </div>
            </div>
        </nav>
    </header>