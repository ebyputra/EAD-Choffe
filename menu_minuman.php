<?php
include "views/header.php";

cekSessionPengunjung();
$data = tampilMenuMinuman();
?>
<body style="background:url('asset/image/kopi7.jpg');background-repeat: no-repeat;background-size: cover;height: 1500px;">
  <body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2"></div>

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-8" style="margin-top:70px">
            <div id="txtPesanMenu" class="alert alert-success" role="alert" style="display:none">
                    Pesanan Anda Kami Terima dan sedang kami proses
                </div>
                <nav aria-label="breadcrumb" role="navigation" class="row">
                    <button class="btn btn-info" style="float:left;margin-bottom:10px;margin-left:15px;display:block;" onclick="window.history.back()">Kembali</button>
                </nav>
                <nav aria-label="breadcrumb" role="navigation">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="menu.php">Menu</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Minuman</li>
                    </ol>
                </nav>

                <div style="float: none; margin-bottom:20px">
                   <?php
                    foreach ($data as $minuman) {
                ?>
                    <div class="card" style="width: 15rem;float: left;margin-bottom:10px;">
                        <img class="card-img-top" src="<?= $minuman['gambar'] ?>" alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title"><?= $minuman['nama'] ?></h4>
                            <p class="card-text">Rp. <?= $minuman['harga'] ?> / Porsi</p>
                            <?php if($minuman['stok'] <= 0){ ?>
                            <p class="alert alert-danger">
                                Habis
                            </p>
                            <?php }else{ ?>
                            <div class="btnPesan" data-id-pesan="<?= $minuman['id_menu'] ?>" data-stok="<?= $minuman['stok'] ?>">
                                <a href="#" class="btn btn-primary">Pesan</a>
                            </div>
                            <?php } ?>
                            </div>
                    </div>
                <?php } ?>
                </div>
             
            </div>

            <div class="col-lg-2"></div>
        </div>
    </div>
<?php
    include "views/footer.php";
?>