<?php
$host = 'db';
$user = 'testuser';
$pass = 'testpass';
$db   = 'testdb';

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Case 4 - PHP with MySQL</title>
</head>
<body>
    <h1>Hello from Case 4!</h1>
    <p>PHP with MySQL connection status: <?php echo $conn->ping() ? 'Connected' : 'Failed'; ?></p>
</body>
</html>