<?php
$db = new PDO('mysql:host=localhost;dbname=website;charset=utf8', 'root', 'MYas2240.');
include "top.php";
include "top.menu.php";
?>
<div class="content-wrapper">
    <div class="content-header">
        <span style="margin-left:600px; padding:60px; margin-bottom:45px; font-weight:bold; font-size:xx-large;">Haberler</span>
        <h3 class="underscratch underscratch-green" style="margin-left:560px;"></h3>
    </div>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <?php
                $data = $db->query("SELECT * FROM haberler");
                while ($d = $data->fetch(PDO::FETCH_ASSOC)) {
                ?>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="thumbnail">
                                <img style="width:100%; height:400px;" src="Resim/Haber/<?= $d['Resim'] ?>">
                            </div>
                            <div class="card-body">
                                <h3 class="m-0"><?= $d['Title'] ?></h3>
                                <h6 class="card-title" style="font-weight:bold;">Yapımcı:<?= $d['Who'] ?></h6><br>
                                <h6 class="m-0" style="font-weight:700; color:chocolate;"><?= $d['Text'] ?></h6>
                            </div>
                        </div>
                    </div>
                <?php } ?>

            </div>
        </div>
    </div>


    <?php
    include "bottom.php";
    include "bottom_footer.php";
    ?>
