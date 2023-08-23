document.getElementById("post-form").addEventListener("submit", (event) => {
  event.preventDefault();

  $(document).ready(function () {
    $.ajax({
      url: "../core/users/getUser.php",
      method: "GET",
      dataType: "json",
      success: function (response) {
        var userId = response.user_id;
        var apiPost = "http://localhost/news-website/core/posts/create.php";
        var apiTag = "http://localhost/news-website/core/tags/create.php";

        const title = document.getElementById("title").value;
        const content = document.getElementById("content").value;
        const tag = document.getElementById("tag").value;
        const category_id = document.getElementById("category").value;
        const created = new Date(),
          dformat =
            [
              created.getFullYear(),
              created.getMonth() + 1,
              created.getDate(),
            ].join("-") +
            " " +
            [
              created.getHours(),
              created.getMinutes(),
              created.getSeconds(),
            ].join(":");

        const dataPost = {
          title: title,
          content: content,
          tag: tag,
          category_id: category_id,
          created: created.toISOString().replace("T", " ").replace("Z", ""),
          user_id: userId,
        };

        const dataTag = {
          tag_name: tag,
        };

        console.log(JSON.stringify(dataPost));
        console.log(JSON.stringify(dataTag));

        postData(apiPost, dataPost)
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

  async function postData(api = "", data = {}) {
    const response = await fetch(api, {
      method: "POST",
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
