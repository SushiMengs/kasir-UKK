<?php
session_start();
if (!isset($_SESSION['username']) && !isset($_SESSION['password'])) {
?>
    <meta http-equiv="refresh" content="0;url=../login.php">
<?php
} else {
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tentang</title>
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="../stylesides.css">

    </head>

    <body>
        <?php include "../sidebar.php"; ?>
        <main>
            <header class="text-center py-1">
                <h1>Aplikasi ini dibuat oleh</h1>
            </header>

            <div class="container">
                <div class="row d-flex justify-content-center">

                    <div class="col-md-3 my-1">
                        <div class="card">
                            <img src="../personal/William.png" class="card-img-top" alt="Anggota 1">
                            <div class="card-body text-center ">
                                <h5 class="card-title">William Christyyanto</h5>
                                <p class="card-text">SMK Negeri 1 Kadipaten</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 my-1">
                        <div class="card">
                            <img src="../personal/Andre.png" class="card-img-top" alt="Anggota 2">
                            <div class="card-body text-center ">
                                <h5 class="card-title">Andre Pratama</h5>
                                <p class="card-text">SMK Negeri 1 Kadipaten</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 my-1">
                        <div class="card">
                            <img src="../personal/Fathan.png" class="card-img-top" alt="Anggota 3">
                            <div class="card-body text-center ">
                                <h5 class="card-title">Fathan Ramadhan</h5>
                                <p class="card-text">SMK Negeri 1 Kadipaten</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row d-flex justify-content-center">
                    <div class="col-md-3 my-1">
                        <div class="card">
                            <img src="../personal/Raihan.png" class="card-img-top" alt="Anggota 4">
                            <div class="card-body text-center ">
                                <h5 class="card-title">Raihan Fazril Alfauzan</h5>
                                <p class="card-text">SMK Negeri 1 Kadipaten</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 my-1">
                        <div class="card">
                            <img src="../personal/Rizki.png" class="card-img-top" alt="Anggota 5">
                            <div class="card-body text-center ">
                                <h5 class="card-title">Rizki Fauzi Ali</h5>
                                <p class="card-text">SMK Negeri 1 Kadipaten</p>
                            </div>
                        </div>
                    </div>
                    <p></p>
                </div>

            </div>
            </div>
        </main>
        <?php include "../footer.php"; ?>
    </body>
    <script src="../bootstrap/js/bootstrap.bundle.min.js"></script>

    </html>
<?php } ?>