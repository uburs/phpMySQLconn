
<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "student_data";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT first_name, last_name, GPA FROM students";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $total_students = $result->num_rows;
    $total_GPA = 0;

    while($row = $result->fetch_assoc()) {
        $total_GPA += $row["GPA"];
        echo "<tr>";
        echo "<td>" . $row["first_name"] . "</td>";
        echo "<td>" . $row["last_name"] . "</td>";
        echo "<td>" . $row["GPA"] . "</td>";
        echo "</tr>";
    }

    $average_GPA = $total_GPA / $total_students;

    echo "<h2>Analytics:</h2>";
    echo "Total Students: " . $total_students . "<br>";
    echo "Average GPA: " . number_format($average_GPA, 2) . "<br>";
} else {
    echo "No data available";
}
$conn->close();
?>
