document.addEventListener("DOMContentLoaded", function () {
  var deleteButtons = document.querySelectorAll(".btn-delete");

  deleteButtons.forEach(function (button) {
    button.addEventListener("click", function () {
      var postId = this.getAttribute("data-post-id");
      deletePost(postId);
    });
  });

  async function deletePost(postId) {
    try {
      const apiUrl = `http://localhost/news-website/core/posts/delete.php`;
      const response = await fetch(apiUrl, {
        method: "DELETE",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ id: postId }),
      });

      if (response.ok) {
        window.location.href = "../pages/dashboard.php";
      } else {
        console.error("Error deleting post.");
      }
    } catch (error) {
      console.error("Error:", error);
    }
  }
});
