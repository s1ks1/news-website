<style>
    .post-view {
        margin: 2rem;
        padding: 2rem;
        border-radius: 1rem;
        background: var(--primary-color-light);
        filter: drop-shadow(5px 5px 10px var(--accent-color-gray));
    }

    .post-form {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .post-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 1rem;
        border-radius: 1rem;
        background: var(--primary-color-light);
        filter: drop-shadow(5px 5px 10px var(--accent-color-gray));
    }

    .post-body {
        display: flex;
        flex-direction: column;
        justify-content: space-around;
        margin-top: 2rem;
        gap: 1rem;
    }

    .post-content,
    .post-selector {
        display: flex;
        flex-direction: column;
        gap: 0.5rem;
    }

    .post-selector {
        flex-direction: row;
        align-items: center;
    }

    .btn-post {
        border-radius: 0.5rem;
        color: var(--primary-color-light);
        cursor: pointer;
        padding: 1rem 2rem;
        font-weight: bolder;
        transition: all 0.5s linear;
        border: 2px solid var(--accent-color-orange);
        background: var(--accent-color-orange);
    }

    .btn-post:hover {
        background-color: var(--primary-color-light);
        color: var(--accent-color-gray);
    }

    .inpt {
        padding: 1rem 1rem;
        border-radius: 0.5rem;
        border: none;
        background: rgba(41, 38, 43, 0.1);
    }

    @media only screen and (max-width: 768px) {
        .post-header {
            align-items: center;
        }

        .post-header h2 {
            font-size: 18px;
        }

        .btn-post {
            padding: 0.5rem 1rem;
        }

        .post-selector {
            flex-direction: column;
            align-items: flex-start;
        }
    }
</style>

<div class="post-view">
    <form id="post-form" class="post-form">
        <div class="post-header">
            <h2>Create a post</h2>
            <input class="btn-post" type="submit" value="Post ▸">
        </div>
        <div class="post-body">
            <div class="post-content">
                <label for="title">Add a title:</label>
                <input class="inpt" id="title" name="title" type="text" placeholder="New title ...">
                <label for="content">Add a content:</label>
                <textarea class="inpt" id="content" name="content" rows="4" placeholder="Write something ..."></textarea>
            </div>
            <div class="post-selector">
                <label for="tag">Add a tag:</label>
                <input class="inpt" id="tag" name="tag" type="text" placeholder="latest">
                <label for="category">Select category:</label>
                <?php include(__DIR__ . '/../../core/category.php') ?>
            </div>
        </div>
    </form>
</div>