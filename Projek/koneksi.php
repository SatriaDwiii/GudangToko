<?php
    $hostname = "localhost";
    $username = "root";
    $password = "";
    $database_name = "toko_gudang";

    $conn = mysqli_connect($hostname, $username, $password, $database_name);

    if($conn->connect_error){
        echo "Koneksi GAGAL";
        die("ERROR");
    } //echo "Koneksi BERHASIL";
?>