<?php
// Database connection
$dbHost = 'db';
$dbUser = 'testuser';
$dbPass = 'testpass';
$dbName = 'testdb';

$conn = new mysqli($dbHost, $dbUser, $dbPass, $dbName);
if ($conn->connect_error) {
    die("Database connection failed: " . $conn->connect_error);
}

// Redis connection
$redis = new Redis();
try {
    $redis->connect('redis', 6379);
    $redisStatus = "Connected";
} catch (Exception $e) {
    $redisStatus = "Failed: " . $e->getMessage();
}

// Increment page views in Redis
$pageViews = $redis->incr('page_views');
?>

<!DOCTYPE html>
<html>
<head>
    <title>Case 5 - Advanced Stack</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .status { margin: 20px 0; padding: 10px; border-radius: 5px; }
        .success { background-color: #dff0d8; }
        .error { background-color: #f2dede; }
    </style>
</head>
<body>
    <h1>Advanced Stack Demo</h1>
    
    <div class="status <?php echo $conn->ping() ? 'success' : 'error'; ?>">
        <h3>MySQL Status:</h3>
        <p><?php echo $conn->ping() ? 'Connected successfully' : 'Connection failed'; ?></p>
    </div>

    <div class="status <?php echo $redisStatus === 'Connected' ? 'success' : 'error'; ?>">
        <h3>Redis Status:</h3>
        <p><?php echo $redisStatus; ?></p>
        <p>Page Views: <?php echo $pageViews; ?></p>
    </div>

    <h3>Available Services:</h3>
    <ul>
        <li>phpMyAdmin: <a href="http://localhost:8087" target="_blank">http://localhost:8087</a></li>
        <li>Grafana: <a href="http://localhost:3000" target="_blank">http://localhost:3000</a></li>
    </ul>
</body>
</html>