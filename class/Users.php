<?php
class Users
{
    private $usersTable = "users";
    private $conn;
    public $id;
    public $username;
    public $email;
    public $password;
    public $created;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    function create()
    {
        $stmt = $this->conn->prepare("INSERT INTO " . $this->usersTable . " (username, email, password, created) VALUES (?, ?, ?, NOW())");

        $this->username = htmlspecialchars(strip_tags($this->username));
        $this->email = htmlspecialchars(strip_tags($this->email));
        $this->password = htmlspecialchars(strip_tags($this->password));

        $stmt->bind_param("sss", $this->username, $this->email, $this->password);

        if ($stmt->execute()) {
            return true;
        } else {
            return false;
        }
    }

    function read()
    {
        if ($this->id) {
            $stmt = $this->conn->prepare("SELECT * FROM " . $this->usersTable . " WHERE id = ?");
            $stmt->bind_param("i", $this->id);
        } else {
            $stmt = $this->conn->prepare("SELECT * FROM " . $this->usersTable);
        }
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }

    function update()
    {
        $stmt = $this->conn->prepare("UPDATE " . $this->usersTable . " SET username = ?, email = ?, password = ? WHERE id = ?");

        $this->id = htmlspecialchars(strip_tags($this->id));
        $this->username = htmlspecialchars(strip_tags($this->username));
        $this->email = htmlspecialchars(strip_tags($this->email));
        $this->password = htmlspecialchars(strip_tags($this->password));

        $stmt->bind_param("sssi", $this->username, $this->email, $this->password, $this->id);
        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    function delete()
    {
        $stmt = $this->conn->prepare("DELETE FROM " . $this->usersTable . " WHERE id = ?");
        $this->id = htmlspecialchars(strip_tags($this->id));
        $stmt->bind_param("i", $this->id);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    function login($username, $password)
    {

        $stmt = $this->conn->prepare("SELECT id FROM " . $this->usersTable . " WHERE username = ? AND password = ?");
        $stmt->bind_param("ss", $username, $password);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows == 1) {
            $user = $result->fetch_assoc();
            $this->id = $user['id'];
            $_SESSION['username'] = $username;
            return true;
        } else {
            return false;
        }
    }

    function register($username, $email, $password)
    {
        if ($this->isUsernameTaken($username)) {
            return array("success" => false, "message" => "Username is already taken.");
        }

        if (!$this->validatePassword($password)) {
            return array("success" => false, "message" => "Invalid password format or length.");
        }

        $stmt = $this->conn->prepare("INSERT INTO " . $this->usersTable . "(username, email, password, created) VALUES (?, ?, ?, NOW())");
        $username = htmlspecialchars(strip_tags($username));
        $email = htmlspecialchars(strip_tags($email));
        $stmt->bind_param("sss", $username, $email, $password);

        if ($stmt->execute()) {
            return array("success" => true, "message" => "Registration successful.");
        } else {
            return array("success" => false, "message" => "Registration failed.");
        }
    }

    private function validatePassword($password)
    {
        return strlen($password) >= 6;
    }


    function isUsernameTaken($username)
    {
        $query = "SELECT id FROM users WHERE username = ?";
        $stmt = $this->conn->prepare($query);
        $username = htmlspecialchars(strip_tags($username));
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $stmt->store_result();
        return $stmt->num_rows > 0;
    }
}
