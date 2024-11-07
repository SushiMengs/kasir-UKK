<?php
session_start();
if (!isset($_SESSION['username']) && !isset($_SESSION['password'])) {
?>
    <meta http-equiv="refresh" content="0;url=../login.php">
<?php
} else {
}
?>
<?php
include "../config.php";
$tahun = date('Y');
$sql = "SELECT MONTH(tanggal) AS bulan, COUNT(*) AS count FROM penjualan WHERE YEAR(tanggal) = $tahun GROUP BY bulan";
$result = mysqli_query($koneksi, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $penjualan[] = ['bulan' => $row['bulan'], 'count' => $row['count']];
}
$json_penjualan = json_encode($penjualan);

$sql = "SELECT SUM(jumlah) AS jumlah,nama_produk FROM `detail_penjualan` GROUP BY nama_produk";
$result = mysqli_query($koneksi, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $produk[] = ['nama_produk' => $row['nama_produk'], 'jumlah' => $row['jumlah']];
}
$json_produk = json_encode($produk);

$sql = "SELECT FROM petugas "
?>
<html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../stylesides.css" />
    <script src="../popper.min.js"></script>
    <style>
        .chart {
            width: 650px;
            padding-top: 5px;
        }
    </style>
</head>

<body>
    <?php
    include "../sidebar.php";
    ?>
    <main>
        <div>

            <div>
                <div>
                    <h2>Selamat Datang <?= $_SESSION['username'] ?>!</h2>
                    <hr>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-8 border-end">
                    <h3>Transaksi Per-Bulan</h3>
                    <div class="chart">
                        <canvas id="myChart"></canvas>
                    </div>
                </div>
                <div class="col-sm-4">
                    <h3>Produk Terjual</h3>
                    <canvas id="Charts"></canvas>
                </div>

                <!-- akhir modal Form -->
    </main>
    <?php include "../footer.php" ?>
    <script src="../chart.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>

    <script>
        const grafik = <?= $json_penjualan; ?>;
        const ctx = document.getElementById('myChart').getContext('2d')
        const bulan = ['januari', 'februari', 'maret', 'april', 'mei', 'juni', 'juli', 'agustus', 'september', 'oktober', 'november', 'desember']
        const barWarna = [
            'rgba(255, 99, 132, 0.8)',
            'rgba(54, 162, 235, 0.8)',
            'rgba(255, 206, 86, 0.8)',
            'rgba(75, 192, 192, 0.8)',
            'rgba(153, 102, 255, 0.8)',
            'rgba(255, 159, 64, 0.8)',
            'rgba(233, 30, 99, 0.8)',
            'rgba(0, 150, 136, 0.8)',
            'rgba(96, 125, 139, 0.8)',
            'rgba(255, 87, 34, 0.8)',
            'rgba(0, 188, 212, 0.8)',
            'rgba(205, 220, 57, 0.8)'
        ];
        const myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: grafik.map((item) => bulan[item.bulan - 1]),
                datasets: [{
                    label: 'Jumlah Transaksi',
                    data: grafik.map(item => item.count),
                    backgroundColor: grafik.map((_, index) => barWarna[index % barWarna.length]),
                    borderColor: grafik.map((_, index) => barWarna[index % barWarna.length]),
                    borderWidth: "1"
                }]

            },
        });

        const charts = document.getElementById('Charts').getContext('2d')
        const grafiks = <?= $json_produk; ?>;
        new Chart(charts, {
            type: 'pie',
            data: {
                labels: grafiks.map((item) => item.nama_produk),
                datasets: [{
                    label: 'Jumlah Terjual',
                    data: grafiks.map(item => item.jumlah),
                }]

            },
        });
    </script>
</body>

</html>
<?php
?>