<?php

class Database {
    private $dbhost = '127.0.0.1';
    private $dbuser = 'root';
    private $dbpass = '';
    private $dbname = 'schooldb';

    public function connect() {
        $conn_str = "mysql:host=$this->dbhost;dbname=$this->dbname";
        try {
            $db_connection = new PDO($conn_str, $this->dbuser, $this->dbpass);
            $db_connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);    // throw exceptions
            return $db_connection;
        } catch (PDOException $e) {    
            echo "Connection failed: " . $e->getMessage();
            return null;
        }
    }
}