<?php

class Posts
{
    private $postsTable = "posts";
    private $conn;
    public $id;
    public $title;
    public $content;
    public $tag;
    public $category_id;
    public $created;
    public $modified;
    public $user_id;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    function read()
    {
        if ($this->id) {
            $stmt = $this->conn->prepare("SELECT * FROM " . $this->postsTable . " WHERE id = ?");
            $stmt->bind_param("i", $this->id);
        } else {
            $stmt = $this->conn->prepare("SELECT * FROM " . $this->postsTable);
        }
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }

    function create()
    {
        $stmt = $this->conn->prepare("INSERT INTO " . $this->postsTable . " (`title`, `content`, `tag`, `category_id`, `created`, `modified`, `user_id`) VALUES (?, ?, ?, ?, NOW(), NOW(), ?)");

        $this->title = htmlspecialchars(strip_tags($this->title));
        $this->content = htmlspecialchars(strip_tags($this->content));
        $this->tag = htmlspecialchars(strip_tags($this->tag));
        $this->category_id = htmlspecialchars(strip_tags($this->category_id));
        $this->user_id = htmlspecialchars(strip_tags($this->user_id));

        $stmt->bind_param("sssii", $this->title, $this->content, $this->tag, $this->category_id, $this->user_id);

        if ($stmt->execute()) {
            return true;
        } else {
            return false;
        }
    }

    function update()
    {
        $stmt = $this->conn->prepare("UPDATE " . $this->postsTable . " SET title = ?, content = ?, tag = ?, category_id = ?, modified = NOW(), user_id = ? WHERE id = ?");

        $this->id = htmlspecialchars(strip_tags($this->id));
        $this->title = htmlspecialchars(strip_tags($this->title));
        $this->content = htmlspecialchars(strip_tags($this->content));
        $this->tag = htmlspecialchars(strip_tags($this->tag));
        $this->category_id = htmlspecialchars(strip_tags($this->category_id));
        $this->user_id = htmlspecialchars(strip_tags($this->user_id));

        $stmt->bind_param("sssiii", $this->title, $this->content, $this->tag, $this->category_id, $this->user_id, $this->id);
        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    function delete()
    {
        $stmt = $this->conn->prepare("DELETE FROM " . $this->postsTable . " WHERE id = ?");

        $this->id = htmlspecialchars(strip_tags($this->id));

        $stmt->bind_param("i", $this->id);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }
}
