<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dasboard Gudang</title>
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

        <!-- Konten Utama -->
        <div class="main-content">
            <header>
                <h1>TOKO SEMBAKO IBU INDARTI</h1>
                <a href="index.php"><button class="logout">logout</button></a>
            </header>

            <section id="data-barang" class="section">
                <h2>Dashboard</h2>
            </section>

            <div id="dashboard" class="cards">
                <div class="card">
                    <h3>Total Barang</h3>
                    <p class="value" for="jumlahbarang"><?php include "jumlahbarang.php";echo $totalData; ?></p>
                </div>
                <div class="card">
                    <h3>Jumlah Admin</h3>
                    <p class="value" for="jumlahakun"><?php include "jumlahadmin.php";echo $totalakun; ?></p>
                </div>
                <div class="card coming-soon">
                    <p>COMING SOON</p>
                </div>
            </div>
            
            <!-- Footer -->
            <footer>
                <p>&copy; 2024 Sistem Gudang | Warung Indarti</p>
            </footer>
        </div>
    </div>
</body>
</html>
