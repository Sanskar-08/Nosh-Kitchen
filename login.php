<?php
$serverName = "localhost";
$username = "sanskar08";
$password = "sans08";
$databaseName = "ChefOnboarding";

$conn = new mysqli($serverName, $username, $password, $databaseName);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $firstName = $_POST["first_name"];
    $lastName = $_POST["last_name"];
    // ... Fetch other form data similarly ...

    // Save to PersonalDetails table
    $stmt = $conn->prepare("INSERT INTO PersonalDetails (FirstName, LastName, Email, PhoneNo) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $firstName, $lastName, $email, $phoneNo);
    $stmt->execute();
    $stmt->close();


    // ... Similarly, save data to other tables ...

    echo "Data saved successfully!";
}

$conn->close();
