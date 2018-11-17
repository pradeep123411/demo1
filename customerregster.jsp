<?php
$servername = "localhost";
$username = "id7542807_root";
$password = "123456";
$dbname = "id7542807_attribute";

// Create connection
$conn = new mysqli($localhost, $id7542807_root, $123456, id7542807_attribute$);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO VALUES user  (username, password, email id,mobile no,location,DOB,Address,Gender,pincode)";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
