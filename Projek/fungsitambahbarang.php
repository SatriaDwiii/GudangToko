<?php
include 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama_barang = $_POST['nama_barang'];
    $harga = $_POST['harga'];
    $kategori = $_POST['kategori'];
    $stok = $_POST['stok'];
    $aksinya ="Tambah Barang";
    $tanggal = date("Y-m-d H");

    if (!empty($nama_barang) && !empty($harga) && !empty($kategori) && !empty($stok)) {
        $sql1 = "INSERT INTO barang (nama_barang,harga,kategori,stok) 
                VALUES ('$nama_barang', '$harga', '$kategori', '$stok')";

        $sql2 = "INSERT INTO logaktivitas (barang, aksi, tanggal, stok) 
                 VALUES ('$nama_barang', '$aksinya', '$tanggal', '$stok')";
        if ($conn->query($sql1) === TRUE && $conn->query($sql2) === TRUE) {

            echo "<script>
                     document.addEventListener('DOMContentLoaded', (event) => {
                Swal.fire({
                title: 'Barang Berhasil Ditambah',
                icon: 'success',
                draggable: true
                }).then(() => {
                        window.location.href = 'tambahbarang.php';
                    }); 
                });
                </script>";
        
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        echo "Semua kolom harus diisi!";
    }
}

?>
