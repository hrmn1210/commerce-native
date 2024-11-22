<?php

include 'admin/dist/functions.php';
//session login
session_start();

//login pelanggan
if (isset($_POST['login'])) {
    if (login($_POST) > 0) {
        echo "<script>
        alert('Selamat Datang! ^^');
        document.location.href='index.php';
        </script>";
    }else {
        echo "<script>
        alert('Gagal!');
        document.location.href='login.php';
        </script>";
    }
}


// if (isset($_SESSION['login'])) {
//     header("Location: index2.php");
//     exit;
// }
// if (isset($_SESSION['loginAdmin'])) {
//     //   header("Location: admin/dist/index.php");
//     exit;
// }

?>



<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Toko Ajan - Masuk</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Check-Out-Page-V100.css">
    <link rel="stylesheet" href="assets/css/ebs-contact-form-1.css">
    <link rel="stylesheet" href="assets/css/ebs-contact-form.css">
    <link rel="stylesheet" href="assets/css/Header-Blue.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="assets/css/Pretty-Product-List.css">
    <link rel="stylesheet" href="assets/css/Profile-Edit-Form-1.css">
    <link rel="stylesheet" href="assets/css/Profile-Edit-Form.css">
    <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/WOWSlider-about-us-1.css">
    <link rel="stylesheet" href="assets/css/WOWSlider-about-us-2.css">
    <link rel="stylesheet" href="assets/css/WOWSlider-about-us.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- Font Awesome CDN Link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- Custom CSS File Link  -->
    <link rel="stylesheet" href="css/style.css">

    <!-- custom icon -->
    <link rel="shortcut icon" href="assets/img/ajan.jpeg" type="image/x-icon">
</head>

<body>
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
                <!-- <a class="btn btn-light action-button w-5 p-2" role="button" href="login.php">Masuk</a> -->
                <a class="btn btn-danger action-button w-5 p-2" role="button" href="register.php">Daftar</a>
                <?php endif ?>
            </span>
        </span>
    </header>

    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="login-clean">
        <form method="post">
            <h2 class="sr-only">Login Form</h2>
            <div class="illustration">
                <img src="assets/img/ajan.jpeg" style="width: 100px;">
            </div>
            <div class="form-group">
                <input class="form-control" type="text" required name="username" placeholder="Username" autofocus
                    required>
            </div>
            <div class="form-group">
                <input class="form-control" type="password" required name="password" placeholder="Password"
                    autocomplete="off" autofocus required>
            </div>
            <div class="form-group">
                <button class="btn btn-danger btn-block" type="submit" name="login">Masuk</button>
            </div>
            <a class="forgot" href="#">Lupa ussername atau password?</a>
        </form>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/Profile-Edit-Form.js"></script>
    <script src="assets/js/WOWSlider-about-us.js"></script>
</body>

</html>