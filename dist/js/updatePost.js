document
  .getElementById("update-post-form")
  .addEventListener("submit", (event) => {
    event.preventDefault();

    $(document).ready(function () {
      $.ajax({
        url: "../core/users/getUser.php",
        method: "GET",
        dataType: "json",
        success: function (response) {
          var userId = response.user_id;
          var apiUpdate = "http://localhost/news-website/core/posts/update.php";
          var apiTag = "http://localhost/news-website/core/tags/create.php";

          const id = document.getElementById("post-id").value;
          const title = document.getElementById("title").value;
          const content = document.getElementById("content").value;
          const tag = document.getElementById("tag").value;
          const category_id = document.getElementById("category").value;

          const dataUpdate = {
            id: id,
            title: title,
            content: content,
            tag: tag,
            category_id: category_id,
            user_id: userId,
          };

          const dataTag = {
            tag_name: tag,
          };

          console.log(JSON.stringify(dataUpdate));
          console.log(JSON.stringify(dataTag));

          updateData(apiUpdate, dataUpdate)
            .then((response) => {
              console.log(response);
            })
            .catch((error) => {
              console.error("Error:", error);
            });

          tagData(apiTag, dataTag)
            .then((response) => {
              console.log(response);
            })
            .catch((error) => {
              console.error("Error:", error);
            });
        },
        error: function () {
          console.log("An error occurred while fetching user ID.");
        },
      });
    });

    async function updateData(api = "", data = {}) {
      const response = await fetch(api, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(data),
      });

      if (response.ok) {
        window.location.href = "../pages/dashboard.php";
      }

      return await response.json();
    }

    async function tagData(api = "", data = {}) {
      const response = await fetch(api, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(data),
      });

      return await response.json();
    }
  });
