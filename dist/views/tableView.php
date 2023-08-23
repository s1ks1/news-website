<style>
    .container {
        padding: 2rem;
        display: flex;
    }

    .table {
        border-radius: 1rem;
        padding: 2rem;
        width: 100%;
        background-color: var(--primary-color-light);
        filter: drop-shadow(5px 5px 10px var(--accent-color-gray));
    }

    .create-new-post {
        background: var(--primary-color-light);
        filter: drop-shadow(5px 5px 10px var(--accent-color-gray));
        border-radius: 1rem;
        padding: 1rem;
        margin-left: 2rem;
        display: flex;
        flex-direction: column;
        width: 25%;
        height: fit-content;
    }

    .create-btn {
        background: var(--accent-color-orange);
        color: var(--accent-color-gray);
        color: var(--primary-color-light);
        padding: var(--btn-padding);
        font-weight: bolder;
        border-radius: 0.5rem;
        border: solid var(--accent-color-orange);
        transition: all 0.5s linear;
        cursor: pointer;
        width: 100%;
    }

    .create-btn:hover {
        background-color: var(--primary-color-light);
        color: var(--accent-color-gray);
    }

    @media only screen and (max-width: 1200px) {
        .container {
            flex-direction: column;
        }

        .table {
            order: 2;
            padding: 1rem;
        }

        .create-new-post {
            order: 1;
            justify-content: space-between;
            flex-direction: row;
            margin-left: 0rem;
            margin-bottom: 2rem;
            width: auto;
            align-items: center;
        }

        .create-new-post>h2 {
            font-size: 18px;
        }
    }
</style>

<div class="container">
    <table class="table">
        <tbody>
            <?php include('postView.php'); ?>
        </tbody>
    </table>
    <div class="create-new-post">
        <h2>You feel inspired?</h2>
        <a href="news-website/../pages/post.php"><button class="create-btn">New Post ✎</button></a>
    </div>
</div>