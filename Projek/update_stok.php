<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <title>Document</title>
</head>
<body>
    <?php
    $conn = new mysqli('localhost', 'root', '', 'toko_gudang');
    if ($conn->connect_error) {
        die("Koneksi gagal: " . $conn->connect_error);
    }
    
    $id_barang = $_POST['id_barang'];
    $tambahstok = $_POST['tambahstok'];
    
    $sql = "SELECT nama_barang FROM barang WHERE id = $id_barang";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $barang = $row['nama_barang'];
    } else {
        die("Barang tidak ditemukan.");
    }
    
    $aksinya = "Tambah Stok";
    $tanggal = date("Y-m-d H");
    
    $sql_update = "UPDATE barang SET stok = stok + $tambahstok WHERE id = $id_barang";
    
    $sql_insert = "INSERT INTO logaktivitas (barang, aksi, tanggal, stok) 
                   VALUES ('$barang', '$aksinya', '$tanggal', '$tambahstok')";
    
    if ($conn->query($sql_update) === TRUE) {
        
        if ($conn->query($sql_insert) === TRUE) {
            echo "<script>
                     document.addEventListener('DOMContentLoaded', (event) => {
                Swal.fire({
                title: 'Stok Berhasil Ditambah',
                icon: 'success',
                draggable: true
                }).then(() => {
                        window.location.href = 'tambahstok.php';
                    }); 
                });
                </script>";
        } else {
            echo "<script> document.addEventListener('DOMContentLoaded', (event) => {
                    Swal.fire({
                    title: 'Gagal',
                    icon: 'error',
                    draggable: true
                    });
                    });</script>" . $conn->error;
        }
    } else {
        echo "Gagal menambahkan stok: " . $conn->error;
    }
    
    $conn->close();
    ?>
    <br><br>
</body>
</html>
