<?php
include "koneksi.php";


$sql = "SELECT COUNT(*) AS totalakun FROM akun";
$result = $conn->query($sql);


if ($result->num_rows > 0) {

    $row = $result->fetch_assoc();
    $totalakun = $row['totalakun'];
} else {
    $totalakun = 0;  
}

$conn->close();
?>