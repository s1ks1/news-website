<?php

class Database
{
    private $host = 'localhost';
    private $user = 'enter DB usernmae';
    private $password = 'enter DB password';
    private $database = 'newsdb';

    public function getConnection()
    {
        $conn = new mysqli($this->host, $this->user, $this->password, $this->database);
        if ($conn->connect_error) {
            die("Error failed to connect to Database: " . $conn->connect_error);
        } else {
            return $conn;
        }
    }
}
