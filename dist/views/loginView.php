<style>
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 83vh;
    }

    .login-body {
        display: flex;
        flex-direction: column;
        padding: 2rem 4rem;
        gap: 1rem;
        border-radius: 1rem;
        background: var(--primary-color-light);
        filter: drop-shadow(5px 5px 10px var(--accent-color-gray));
    }

    .form-content {
        display: flex;
        flex-direction: column;
        gap: 0.5rem;
    }

    .login-body a {
        color: var(--accent-color-orange);
        text-decoration: none;
    }

    .btn-login {
        border-radius: 0.5rem;
        color: var(--primary-color-light);
        cursor: pointer;
        padding: 1rem 2rem;
        font-weight: bolder;
        transition: all 0.5s linear;
        border: 2px solid var(--accent-color-orange);
        background: var(--accent-color-orange);
    }

    .btn-login:hover {
        background-color: var(--primary-color-light);
        color: var(--accent-color-gray);
    }

    .inpt {
        padding: 1rem 1rem;
        border-radius: 0.5rem;
        border: none;
        background: rgba(41, 38, 43, 0.1);
    }

    .error {
        color: var(--accent-color-red);
    }

    @media only screen and (max-width: 768px) {
        .login-body {
            padding: 2rem 2rem;
        }
    }
</style>

<div class="container">
    <div class="login-body">
        <h1>Log In</h1>
        <form action="" method="post" name="login" class="form-content">
            <label for="username">Enter username:</label>
            <input class="inpt" type="text" name="username" placeholder="JohnDoe" required />
            <label for="password">Enter password:</label>
            <input class="inpt" type="password" name="password" placeholder="******" required />
            <input class="btn-login" name="login" type="submit" value="Login" />
        </form>
        <p>Not registered yet? <a href='../pages/registration.php'>Register Here</a></p>
        <?php if (isset($loginError)) : ?>
            <p class="error"><?php echo $loginError; ?></p>
        <?php endif; ?>
    </div>
</div>