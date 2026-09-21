<?php
// MySQLi Database Connection for StudentHub Portal
// Student: Aman Patel | Roll No: 25DCS076 | ITUE203

$host = getenv("STUDENTHUB_DB_HOST") ?: "localhost";
$username = getenv("STUDENTHUB_DB_USER") ?: "root";
$password = getenv("STUDENTHUB_DB_PASSWORD") ?: "";
$dbname = getenv("STUDENTHUB_DB_NAME") ?: "studenthub";

$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Database connection failed: " . $conn->connect_error);
}

$conn->set_charset("utf8mb4");
?>