<?php

$db = new PDO('mysql:host=localhost;dbname=website;charset=utf8','root', 'MYas2240.');

include "top.php";
include "top.menu.php";
?>
<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <h1 class="m-0">Oyunlar</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <?php
                $kactane = $db->query("SELECT COUNT(*) FROM games");
                $hata = $db->errorInfo();
                if(!is_null($hata[2])){ echo 'DB Error.'; exit(); }
                $oyunlar = $db->query("SELECT * FROM games ORDER BY Name");
                while($oyun = $oyunlar->fetch(PDO::FETCH_ASSOC)){
                ?>
                <div class="col-lg-3">
                    <div class="card">
                        <div class="thumbnail">
                        <img style="width:100%; height:400px;" src="Resim/Cover/<?=$oyun['Poster']?>">
                        </div>
                        <div class="card-body">
                            <a href="GamesSection.php?id=<?=$oyun['Id']?>">
                            <h3 class="m-0" id="Witcher"><?=$oyun['Name']?>
                            </a></h3>
                            <?php
                            $turler = $oyun['genre'];
                            $tur = explode(",", $turler);
                            ?>
                            <h6 class="card-title">Türü:
                                <?php
                                foreach($tur as $t){
                                ?>
                                <a href="#"><?=$t?></a>
                                <?php } ?>
                            </h6>
                        </div>
                    </div>
                </div>
                <?php
                }
                ?>
            </div>
            <!-- /.row -->
        </div>
    </div>
    <!-- /.content -->
</div>
<?php
include "bottom.php";
include "bottom_footer.php";
?>