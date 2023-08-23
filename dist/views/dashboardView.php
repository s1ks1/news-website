<style>
  .container {
    margin: 2rem;
    display: flex;
    flex-direction: column;
    padding: 1rem 2rem;
    gap: 1rem;
    border-radius: 1rem;
    background: var(--primary-color-light);
    filter: drop-shadow(5px 5px 10px var(--accent-color-gray));
  }

  .dashboard-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .btn-primary {
    border-radius: 0.5rem;
    color: var(--primary-color-light);
    cursor: pointer;
    padding: var(--btn-padding);
    font-weight: bolder;
    transition: all 0.5s linear;
    border: 2px solid var(--accent-color-orange);
    background: var(--accent-color-orange);
  }

  .btn-primary:hover {
    background-color: var(--primary-color-light);
    color: var(--accent-color-gray);
  }

  .btn-secondary {
    border-radius: 0.5rem;
    background: var(--primary-color-light);
    color: var(--accent-color-gray);
    cursor: pointer;
    padding: var(--btn-padding);
    font-weight: bolder;
    transition: all 0.5s linear;
  }

  .btn-secondary:hover {
    border: 2px solid var(--accent-color-gray);
    background: var(--accent-color-gray);
    color: var(--primary-color-light);
  }

  .manager-title {
    padding: 0rem 4rem;
  }

  @media only screen and (max-width: 768px) {
    .manager-title {
      padding: 0rem 2rem;
    }
  }
</style>

<div class="container">
  <div class="dashboard-header">
    <h2>Welcome, <?php echo $_SESSION['username']; ?></h2>
    <a href="../index.php"><button class="btn-secondary">Home</button></a>
  </div>
  <div class="post-list">
    <?php include(__DIR__ . '/dashboard.php'); ?>
  </div>
</div>

<div class="manager-title">
  <h1>Post manager:</h1>
</div>