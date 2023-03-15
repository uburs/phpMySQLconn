<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "student_data";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$GPA = $_POST['GPA'];

$sql = "INSERT INTO students (first_name, last_name, GPA) VALUES ('$first_name', '$last_name', $GPA)";

if ($conn->query($sql) === TRUE) {
    header("Location: index.php");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
