<style>
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 83vh;
    }

    .registration-body {
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

    .registration-body a {
        color: var(--accent-color-orange);
        text-decoration: none;
    }

    .btn-register {
        border-radius: 0.5rem;
        color: var(--primary-color-light);
        cursor: pointer;
        padding: 1rem 2rem;
        font-weight: bolder;
        transition: all 0.5s linear;
        border: 2px solid var(--accent-color-orange);
        background: var(--accent-color-orange);
    }

    .btn-register:hover {
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
        .registration-body {
            padding: 2rem 2rem;
        }
    }
</style>

<div class="container">
    <div class="registration-body">
        <h1>Registration</h1>
        <form name="registration" action="" method="post" class="form-content">
            <label for="username">Enter username:</label>
            <input class="inpt" type="text" name="username" placeholder="JohnDoe" required />
            <label for="email">Enter email:</label>
            <input class="inpt" type="email" name="email" placeholder="user@example.com" required />
            <label for="password">Enter password:</label>
            <input class="inpt" type="password" name="password" placeholder="******" required />
            <input class="btn-register" type="submit" name="register" value="Register" />
        </form>
        <p>Already member? <a href='../pages/login.php'>Login Here</a></p>
    </div>
</div>