<?php

class Tags
{
    private $tagsTable = "tags";
    private $conn;
    public $id;
    public $tag_name;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    function read()
    {
        if ($this->id) {
            $stmt = $this->conn->prepare("SELECT * FROM " . $this->tagsTable . " WHERE id = ?");
            $stmt->bind_param("i", $this->id);
        } else {
            $stmt = $this->conn->prepare("SELECT * FROM " . $this->tagsTable);
        }
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }

    function create()
    {
        if ($this->tagExists($this->tag_name)) {
            return false;
        }

        $stmt = $this->conn->prepare("INSERT INTO " . $this->tagsTable . " (`tag_name`) VALUES (?)");
        $this->tag_name = htmlspecialchars(strip_tags($this->tag_name));
        $stmt->bind_param("s", $this->tag_name);

        if ($stmt->execute()) {
            return true;
        } else {
            return false;
        }
    }

    function update()
    {
        $stmt = $this->conn->prepare("UPDATE " . $this->tagsTable . " SET tag_name = ? WHERE id = ?");

        $this->id = htmlspecialchars(strip_tags($this->id));
        $this->tag_name = htmlspecialchars(strip_tags($this->tag_name));

        $stmt->bind_param("si", $this->tag_name, $this->id);
        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    function delete()
    {
        $stmt = $this->conn->prepare("DELETE FROM " . $this->tagsTable . " WHERE id = ?");

        $this->id = htmlspecialchars(strip_tags($this->id));

        $stmt->bind_param("i", $this->id);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    function tagExists($tag_name)
    {
        $stmt = $this->conn->prepare("SELECT id FROM " . $this->tagsTable . " WHERE tag_name = ?");
        $stmt->bind_param("s", $tag_name);
        $stmt->execute();
        $result = $stmt->get_result();

        return $result->num_rows > 0;
    }
}
