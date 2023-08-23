<style>
        td {
                padding: 0.2rem;
        }

        a {
                text-decoration: none;
                color: var(--accent-color-gray);
        }

        small {
                opacity: 0.6;
        }

        .author {
                color: var(--accent-color-orange)
        }

        .created {
                color: var(--accent-color-gray)
        }

        .tag {
                color: var(--accent-color-orange);
                border: 2px solid var(--accent-color-gray);
                padding: 0.2rem;
                border-radius: 0.5rem;
                margin-top: 1rem;
        }

        .btn-read-more {
                border: 2px solid var(--accent-color-gray);
                border-radius: 0.5rem;
                background: var(--accent-color-gray);
                color: var(--primary-color-light);
                cursor: pointer;
                padding: var(--btn-padding);
                margin-top: 0.5rem;
                font-weight: bolder;
                transition: all 0.5s linear;
        }

        .btn-read-more:hover {
                background-color: var(--primary-color-light);
                color: var(--accent-color-gray);
        }
</style>

<?php while ($row = mysqli_fetch_array($result)) { ?>

        <tr>
                <td>
                        <h2><a href="<?php echo "/news-website/pages/news.php?post=" . $row['id'] ?>"><?php echo $row['title'] ?></a></h2>
                </td>
        </tr>
        <tr>
                <td><small>Written By: <strong class="author"><?php echo $row['author'] ?></strong>
        <tr>
                <td><small>Created: <strong class="created""><?php echo $row['created'] ?></strong></small></td></tr></small></td>
</tr>
<tr>
        <td>
    <p><?php echo $row['content'] ?></p>
        </td>
</tr>
<tr>
<td><small class=" tag">#<?php echo $row['tag'] ?></small></td>
        </tr>
        <tr>
                <td><a href="<?php echo "/news-website/pages/news.php?post=" . $row['id'] ?>">
                                <button class="btn-read-more">Read More</button></a><br><br>
                        <hr>
                </td>
        </tr>
<?php
}
?>