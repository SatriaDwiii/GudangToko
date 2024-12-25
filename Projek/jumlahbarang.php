<?php
include "koneksi.php";


$sql = "SELECT COUNT(*) AS total_data FROM barang";
$result = $conn->query($sql);


if ($result->num_rows > 0) {

    $row = $result->fetch_assoc();
    $totalData = $row['total_data'];
} else {
    $totalData = 0;  
}

$conn->close();
?>