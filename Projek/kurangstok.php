
<?php
$conn = new mysqli('localhost', 'root', '', 'toko_gudang');
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['id_barang']) && isset($_POST['ambilstok'])) {
        $id_barang = intval($_POST['id_barang']); 
        $ambilstok = intval($_POST['ambilstok']);

$sql = "SELECT nama_barang FROM barang WHERE id = $id_barang";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $barang = $row['nama_barang'];
} else {
    die("Barang tidak ditemukan.");
}

$aksinya = "Ambil Stok";
$tanggal = date("Y-m-d H");

$sql_update = "UPDATE barang SET stok = stok - $ambilstok WHERE id = $id_barang";

$sql_insert = "INSERT INTO logaktivitas (barang, aksi, tanggal, stok) 
               VALUES ('$barang', '$aksinya', '$tanggal', '$ambilstok')";

if ($conn->query($sql_update) === TRUE) {
    
    if ($conn->query($sql_insert) === TRUE) {
        echo "<script>
                     document.addEventListener('DOMContentLoaded', (event) => {
                Swal.fire({
                title: 'Stok Berhasil Diambil',
                icon: 'success',
                draggable: true
                }).then(() => {
                        window.location.href = 'ambilstok.php';
                    }); 
                });
                </script>";
    } else {
        echo "Gagal mencatat aktivitas: " . $conn->error;
    }
} else {
    echo "Gagal menambahkan stok: " . $conn->error;
}
    }}
$conn->close();
?>
