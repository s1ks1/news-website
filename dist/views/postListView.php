<style>
    .post {
        padding: 1rem 4rem;
    }

    .btn-delete {
        border-radius: 0.5rem;
        color: var(--primary-color-light);
        cursor: pointer;
        padding: var(--btn-padding);
        font-weight: bolder;
        transition: all 0.5s linear;
        border: 2px solid var(--accent-color-red);
        background: var(--accent-color-red);
        text-decoration: none;
    }

    .post-commands {
        margin: 2rem 0rem;
    }

    .btn-delete:hover {
        background-color: var(--primary-color-light);
        color: var(--accent-color-gray);
    }

    .btn-edit {
        border-radius: 0.5rem;
        background: var(--primary-color-light);
        color: var(--accent-color-gray);
        border: 2px solid var(--accent-color-gray);
        cursor: pointer;
        padding: var(--btn-padding);
        font-weight: bolder;
        transition: all 0.5s linear;
        text-decoration: none;
    }

    .btn-edit:hover {
        border: 2px solid var(--accent-color-gray);
        background: var(--accent-color-gray);
        color: var(--primary-color-light);
    }
</style>

<div class="post">
    <div class="post-content">
        <h3><?php echo $row['title'] ?></h3>
        <p><?php echo $row['content'] ?></p>
    </div>
    <div class="post-commands">
        <form id="delete-form">
            <div>
                <a class="btn-edit" href="../pages/update.php?id=<?php echo $row['id']; ?>">Edit</a>
                <input type="hidden" id="post-id" value="<?php echo $row['id']; ?>">
                <a class="btn-delete" data-post-id="<?php echo $row['id']; ?>">Delete</a>
            </div>
        </form>
    </div>
    <hr>
</div>