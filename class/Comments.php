<?php

class Comments
{
    private $commentTable = "comments";
    private $conn;
    public $id;
    public $content;
    public $user_id;
    public $post_id;
    public $created;


    public function __construct($db)
    {
        $this->conn = $db;
    }

    function read()
    {
        if ($this->id) {
            $stmt = $this->conn->prepare("SELECT * FROM " . $this->commentTable . " WHERE id = ?");
            $stmt->bind_param("i", $this->id);
        } else {
            $stmt = $this->conn->prepare("SELECT * FROM " . $this->commentTable);
        }
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }

    function create()
    {
        $stmt = $this->conn->prepare("INSERT INTO " . $this->commentTable . " (`content`, `post_id`, `user_id`, `created`) VALUES (?, ?, ?, NOW())");

        $this->content = htmlspecialchars(strip_tags($this->content));
        $this->post_id = htmlspecialchars(strip_tags($this->post_id));
        $this->user_id = htmlspecialchars(strip_tags($this->user_id));

        $stmt->bind_param("sii", $this->content, $this->post_id, $this->user_id);

        if ($stmt->execute()) {
            return true;
        } else {
            return false;
        }
    }

    function update()
    {
        $stmt = $this->conn->prepare("UPDATE " . $this->commentTable . " SET content = ?, post_id = ?, user_id = ? WHERE id = ?");

        $this->id = htmlspecialchars(strip_tags($this->id));
        $this->content = htmlspecialchars(strip_tags($this->content));
        $this->post_id = htmlspecialchars(strip_tags($this->post_id));
        $this->user_id = htmlspecialchars(strip_tags($this->user_id));

        $stmt->bind_param("siii", $this->content, $this->post_id, $this->user_id, $this->id);
        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    function delete()
    {
        $stmt = $this->conn->prepare("DELETE FROM " . $this->commentTable . " WHERE id = ?");

        $this->id = htmlspecialchars(strip_tags($this->id));

        $stmt->bind_param("i", $this->id);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }
}
