<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Data Analytics</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Student Data</h1>
    <form action="insert_data.php" method="post">
        <label for="first_name">First Name:</label>
        <input type="text" id="first_name" name="first_name" required>
        <br>
        <label for="last_name">Last Name:</label>
        <input type="text" id="last_name" name="last_name" required>
        <br>
        <label for="GPA">GPA:</label>
        <input type="number" id="GPA" name="GPA" step="0.01" min="0" max="4" required>
        <br>
        <input type="submit" value="Submit">
    </form>
    <div id="analytics">
        
    <table id="student_data">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>GPA</th>
        </tr>
        <?php include 'fetch_data.php'; ?>
    </table>
</body>
</html>
