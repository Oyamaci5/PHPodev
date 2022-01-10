<?php
$db = new PDO('mysql:host=localhost;dbname=website;charset=utf8','root', 'MYas2240.');

$_id = $_GET['id'];

if(is_null($_id) || $_id == '') header("Location: Oyunici.php");

$bilgi = $db->query("SELECT * FROM games WHERE id = $_id");
$oyun = $bilgi->fetch(PDO::FETCH_ASSOC);

include "top.php";
include "top.menu.php";
?>

<div class="content-wrapper">
  <div class="content-header">
  </div>
  <div class="container-fluid">
    <div class="row ">
      <div class="col-md-4">
        <div class="thumbnail" style="height:50%;">
          <img class="rounded float-right" style="height:400px;" src="Resim/Thumbnails/<?=$oyun['thumbnails']?>">
        </div>
      </div>
      <div class="col-md-4" style="margin-left:75px;">
        <div>
          <h3 class="banner-title"><?=$oyun['Name']?></h3>
          <h3 class="underscratch underscratch-green"></h3>
          <h4 style="font-family: 'Courier New', Courier, monospace; color:aliceblue;">Türü : 
          <?php
          $turler = $oyun['genre'];
          $tur = explode(",", $turler);
              foreach($tur as $t){
              ?>
              <a class="classGame" href="#"><?=$t?></a>
              <?php } ?>
          </h4>
          <h5 style="font-family:'Lucida Sans' ;color:aliceblue;">Story</h5>
          <h3 class="underscratch underscratch-green"></h3>
          <h5 class="text-justify" style="color:honeydew;">&nbsp; &nbsp;<?=$oyun['Story']?></h5>
        </div>
      </div>
      <div class="col-md-3" style="margin-left:30px;">
        <div>
          <h4 style="color:aliceblue;">Bilgiler:</h4>
          <h3 class="underscratch underscratch-green"></h3>
          <h5 class="label-text">Çıkış Tarihi:</h5><span style="color:aliceblue;"><?=$oyun['Release_Date']?></span><br>
          <h5 class="label-text">Geliştirici: </h5><a class="classGame" href="Sirketler.php"><?=$oyun['Company']?><a> <br>

        </div>
      </div>
    </div>
    <div class="container-fluid" style="padding-bottom:35px;">
      <div class="content-header">
        <h3 style="font-weight:400px; margin-top:15px;"> Oyun içi Görüntüler: </h3>
        <h3 class="underscratch underscratch-gre"></h3>
      </div>
      <div class="row">

        <div id="image-slider" class="splide" data-splide='{"type":"loop","perPage":3}'>
          <div class="splide__track">
            <ul class="splide__list">
                <?php
                $resimler = $db->query("SELECT * FROM resimler WHERE GameId = $_id");
                while($resim = $resimler->fetch(PDO::FETCH_ASSOC)){
                ?>
              <li class="splide__slide">
                <div class="splide__slide__container">
                  <img src="Resim/CAROUSEL/<?=$resim['Resim']?>">
                </div>
              </li>
              <?php }?>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid" style="padding-bottom:35px;">
      <div class="content-header">
        <h3 style="font-weight:400px; margin-top:15px;"> Oyunun Fiyatları: </h3>
        <h3 class="underscratch underscratch-gre"></h3>
      </div>
      <div class="row">
        <table class="table table-dark table-striped">
          <thead>
            <tr>
              <th scope="col">Tedarikçi</th>
              <th scope="col">Fiyat</th>
              <th scope="col">Url</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $fiyatlar = $db->query("SELECT * FROM fiyatlar WHERE GameId = $_id");
            $fiyat = $fiyatlar->fetch(PDO::FETCH_ASSOC);
            ?>
            <tr>
              <th scope="row">DurmaPlay</th>
              <td><?=$fiyat['DurmaPlay']?></td>
              <td><a href="https://www.durmaplay.com/tr/store">Siteye git</td>
            </tr>
            <tr>
              <th scope="row">Steam</th>
              <td><?=$fiyat['Steam']?></td>
              <td><a href="https://store.steampowered.com/">Siteye git</td>
            </tr>
            <tr>
              <th scope="row">Epic</th>
              <td><?=$fiyat['Epic']?></td>
              <td><a href="https://www.epicgames.com/store/tr/">Siteye git</td>
            </tr>
            <tr>
              <th scope="row">G2</th>
              <td><?=$fiyat['G2']?></td>
              <td><a href="https://www.g2a.com/?adid=GA-TR_PB_DIGI_SN_BRAND_Turkish-W-TXT_&id=35&gclsrc=ds&gclsrc=ds">Siteye git</td>
            </tr>
            <tr>
              <th scope="row">Humble Bundle</th>
              <td><?=$fiyat['HumbleBundle']?></td>
              <td><a href="https://www.humblebundle.com/?hmb_source=navbar">Siteye git</td>
            </tr>
          </tbody>
        </table>


      </div>
    </div>
  </div>
</div>




<?php
include "bottom.php";
?>
<script>
  document.addEventListener( 'DOMContentLoaded', function () {
    new Splide( '#image-slider',{
      
    }).mount();
  } );
  $("#ekle").click(function(){

  })
</script>
<?php
include "bottom_footer.php";
?>