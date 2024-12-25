<?php
$conn = new mysqli('localhost', 'root', '', 'toko_gudang');

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
$result = $conn->query("SELECT id, nama_barang, harga, kategori, stok FROM barang");

if (!$result) {
    die("Query gagal: " . $conn->error);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Stok Barang</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- Sidebar -->
    <div class="container">
        <div class="sidebar">
            <h2>Menu</h2>
            <ul>
                <li><a href="dashboard.php">Dasboard</a></li>
                <li><a href="databarang.php">Data Barang</a></li>
                <li><a href="tambahbarang.php">Tambah Barang</a></li>
                <li><a href="tambahstok.php">Tambah Stok Barang</a></li>
                <li><a href="ambilstok.php">Ambil Barang</a></li>
                <li><a href="laporan.php">Laporan</a></li>
            </ul>
        </div>

        <div class="main-content">
            <header>
                <h1>TOKO SEMBAKO IBU INDARTI</h1>
                <a href="index.php"><button class="logout">logout</button></a>
            </header>

            <section id="data-barang" class="section">
                <h2>Tambah Stok Barang </h2>
                
        <div class="form-tambah-barang">
            <h3>Tambah Stok Barang</h3>
                <form action="update_stok.php" method="POST">
                    <label for="item">Pilih Barang:</label>
                    <select name="id_barang" id="item" required>
                     <?php while ($row = $result->fetch_assoc()): ?>
                         <option value="<?= $row['id'] ?>">
                     <?= $row['nama_barang'] ?> (Stok: <?= $row['stok']?>)
                    
                    </option>
                     <?php endwhile; ?>
        </select>
        <br><br>
             <label for="stock">Tambahkan Stok:</label>
             <input type="number" name="tambahstok" id="stock" min="1" required>
        <br><br>
        <button type="submit">Tambah Stok</button>
    </form>
        </div>
    <!-- Footer -->
    <footer>
                <p>&copy; 2024 Sistem Gudang | Warung Indarti</p>
            </footer>
</body>
<script></script>
</html>

<?php $conn->close(); ?>
