<style>
    .pagination {
        color: var(--accent-color-gray);
        background: var(--accent-color-white);
        text-decoration: none;
        padding: 0.5rem;
        border: 2px solid var(--accent-color-gray);
        border-radius: 10px;
        transition: all 0.2s linear;
    }

    .pagination:hover {
        font-weight: bolder;
        background: var(--accent-color-gray);
        color: var(--primary-color-light);
    }
</style>

<div style="text-align: center">
    <?php
    for ($page = 1; $page <= $number_of_page; $page++) { ?>
        <a class="pagination" href="index.php?page=<?php echo $page ?>"><?php echo $page ?></a>
    <?php }  ?>
</div>