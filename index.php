<?php include(__DIR__ . '/pages/header.php'); ?>

<header class="navigation">
    <nav class="navbar" id="navBar">
        <div class="logo">
            <a href="#">
                <h2>Newster</h2>
            </a>
        </div>
        <div class="nav-items">
            <div class="nav-list">
                <a href="#home" class="active">Home</a>
                <a href="#news">News</a>
                <a href="#contact">Contact</a>
                <a href="#about">About</a>
                <button class="btn-secondary">Log In</button>
                <button class="btn-primary">Sign Up</button>
            </div>
        </div>
    </nav>
</header>

<main>
<div class="blog-view">
        <?php include(__DIR__ . '/core/pagination.php');?>
    </div>
</main>

<?php include(__DIR__ . '/pages/footer.php'); ?>