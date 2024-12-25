

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dasboard Gudang</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <?php
    include "koneksi.php";
    include "fungsitambahbarang.php"
    ?>
    
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

        <!-- Konten Utama -->
        <div class="main-content">
            <header>
                <h1>TOKO SEMBAKO IBU INDARTI</h1>
                <a href="index.php"><button class="logout">logout</button></a>
            </header>

        <!-- Form Tambah Barang -->
         <form  method="POST">
        <div class="form-tambah-barang">
            <h3>Tambah Barang</h3>
            <form id="formTambahBarang">
                <label for="nama_barang">Nama Barang:</label>
                <input type="text" id="nama_barang" name="nama_barang" required>

                <label for="harga">Harga Barang:</label>
                <input type="text" id="harga" name="harga"required>
            
                <label for="kategori">Kategori Barang:</label>
                <input type="text" id="kategori" name="kategori" required>
            
                <label for="stok">Jumlah:</label>
                <input type="number" id="stok" min="1" name="stok"required>
            
                <button type="submit">Tambah</button>
            </form>
        </div>
        </form> 
            <!-- Footer -->
            <footer>
            <p>&copy; 2024 Sistem Gudang | Warung Indarti</p>
            </footer>
        </div>
    </div>
    
</body>
</html>





