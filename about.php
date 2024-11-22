<?php
session_start();
require 'admin/dist/functions.php';
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Toko-Ajan</title>

    <!-- SWIPER -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- Font Awesome CDN Link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

    <!-- Custom CSS File Link  -->
    <link rel="stylesheet" href="css/style.css" />

    <!-- custom icon -->
    <link rel="shortcut icon" href="assets/img/ajan.jpeg" type="image/x-icon">
</head>

<body>
    <br />
    <br />
    <br />
    <br />
    <br />
    <!-- HEADER -->
    <header class="header">
        <div id="menu-btn" class="fas fa-bars"></div>

        <a href="#" class="logo"><img src="assets/img/ajan.jpeg" style="width: 50px;"></a>

        <nav class="navbar">
            <a href="index.php">home</a>
            <a href="about.php">about</a>
            <a href="menu.php">produk</a>
            <a href="keranjang.php"><i class="fas fa-shopping-cart"></i></a>
        </nav>

        <!-- <a href="login.php" class="btn">Login</a> -->
        <span class="navbar-text actions">
            <!-- <ul class="nav navbar-nav mr-auto"></ul> -->
            <span class="navbar-text actions">
                <?php if (isset($_SESSION['loginPelanggan'])) : ?>
                <div class="btn-group">
                    <a class="btn btn-light" href="#"><i class="fa fa-user"></i>
                        <?= $_SESSION['loginPelanggan']['Nama'] ?></a>
                    <a class="btn" href="admin/dist/logout.php"><i class="fa fa-ban fa-fw"></i> Keluar</a>
                    <a class="btn" href="riwayat.php"><i class="fas fa-star"></i> Riwayat</a>
                </div>
                <?php else : ?>
                <a class="btn btn-light action-button w-5 p-2" role="button" href="login.php">Masuk</a>
                <a class="btn btn-light action-button w-5 p-2" role="button" href="register.php">Daftar</a>
                <?php endif ?>
            </span>
        </span>
    </header>
    <!-- ABOUT -->
    <section class="about" id="about">
        <h1 class="heading">tentang kami <span>Kenapa Kami</span></h1>

        <div class="row">
            <div class="image">
                <img src="image/about-img.jpg" alt="" />
            </div>

            <div class="content">
                <h3 class="title">Apa yang membuat toko kami spesial!</h3>
                <p>
                    Toko kami menyediakan semua kebutuhan anda dan seluruh keluarga anda
                    dengan harga terjangkau dan selalu ada potongan harga disetiap pembelian yang banyak
                </p>
                <a href="#" class="btn">read more</a>
                <div class="icons-container">
                    <div class="icons">
                        <img src="image/hand.png" alt="" />
                        <h3>Pelayanan Sangat Baik</h3>
                    </div>
                    <div class="icons">
                        <img src="image/toko.png" alt="" />
                        <h3>Memiliki Letak Lokasi Yang Strategis</h3>
                    </div>
                    <div class="icons">
                        <img src="image/mobil.png" alt="" />
                        <h3>gratis pengiriman</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="maps">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15954.822979634431!2d109.3326779!3d1.3531187!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31e4bb0062e7eb9d%3A0x66c1d6ab6ce444bc!2sToko%20Sembako%20AJAN!5e0!3m2!1sid!2sid!4v1730543057161!5m2!1sid!2sid"
            width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>

    <!-- FOOTER -->
    <section class="footer">
        <div class="box-container">
            <div class="box">
                <h3>Lokasi Kami</h3>
                <ul>
                    <a href="https://g.co/kgs/EPgGmBF"><i class="fas fa-arrow-right"></i> Sambas</a>
                </ul>
            </div>

            <div class="box">
                <h3>quick links</h3>
                <a href="index.php"><i class="fas fa-arrow-right"></i> Home</a>
                <a href="about.php"><i class="fas fa-arrow-right"></i> about</a>
                <a href="menu.php"><i class="fas fa-arrow-right"></i> Produk</a>
            </div>

            <div class="box">
                <h3>kontak</h3>
                <a href="#"><i class="fas fa-phone"></i> +123-456-7890</a>
                <a href="#"><i class="fas fa-phone"></i> +111-222-3333</a>
                <a href="#"><i class="fas fa-envelope"></i> Ajan@gmail.com</a>
                <a href="#"><i class="fas fa-envelope"></i> TokoAjan@gmail.com</a>
            </div>

            <div class="box">
                <h3>sosial media</h3>
                <a href="#"><i class="fab fa-facebook-f"></i> facebook</a>
                <a href="#"><i class="fab fa-twitter"></i> twitter</a>
                <a href="#"><i class="fab fa-instagram"></i> instagram</a>
                <a href="#"><i class="fab fa-linkedin"></i> linkedin</a>
                <a href="#"><i class="fab fa-twitter"></i> twitter</a>
            </div>
        </div>

        <div class="credit">created by <span>mahasiswa ubsi</span> | all rights reserved</div>
    </section>

    <!-- SWIPER -->
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

    <!-- Custom JS File Link  -->
    <script src="js/script.js"></script>
</body>

</html>