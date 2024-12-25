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

            <!-- Laporan Section -->
            <section id="data-barang" class="section">
                <h2>Laporan</h2>
                <div class="search-bar">
                    <input type="text" id="searchInput" placeholder="Cari barang...">
                </div>
                <div class="bungkustabel">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nama Barang</th>
                            <th>Aksi</th>
                            <th>Tanggal Aksi</th>
                            <th>Jumlah</th>
                        </tr>
                    </thead>

                    <tbody id="tableBody">
                    <?php
                            include "koneksi.php";
                        
                            $no=1;
                            $ambilData = mysqli_query($conn, "select * from logaktivitas ");
                            while($tampil = mysqli_fetch_assoc($ambilData)){
                                echo "
                                    <tr>
                                        <td>$tampil[id_log]</td>
                                        <td>$tampil[barang]</td>
                                        <td>$tampil[aksi]</td>
                                        <td>$tampil[tanggal]</td>
                                        <td>$tampil[stok]</td>  
                                    </tr>";
                            
                                $no++;
                            }
                        ?>
                    </tbody>
                </table>
                </div>
            </section>


            <!-- Footer -->
            <footer>
            <p>&copy; 2024 Sistem Gudang | Warung Lindarti</p>
            </footer>
        </div>
    </div>
    <script>
        
        document.getElementById("searchInput").addEventListener("input", function () {
            const searchValue = this.value.toLowerCase();
            const tableRows = document.querySelectorAll("#tableBody tr");

            tableRows.forEach(row => {
                const rowText = row.innerText.toLowerCase();
                if (rowText.includes(searchValue)) {
                    row.style.display = "";
                } else {
                    row.style.display = "none";
                }
            });
        });
    </script>
</body>
</html>
