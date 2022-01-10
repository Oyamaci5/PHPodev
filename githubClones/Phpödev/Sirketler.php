<?php
include "top.php";
include "top.menu.php";
$db = new PDO('mysql:host=localhost;dbname=website;charset=utf8', 'root', 'MYas2240.');
?>

<div class="content-wrapper">
    <div class="content-header">
        <span style="margin-left:600px; padding:60px; margin-bottom:45px; font-weight:bold; font-size:xx-large;">Şirketler</span>
        <button type="button" class="btn btn-dark" style="float:right;" data-toggle="modal" data-target="#modal-lg">Şirket Ekle</button>
        <h3 class="underscratch underscratch-green" style="margin-left:560px;"></h3>
    </div>
    <div class="content">
        <div class="container-fluid">
            <div class="row ">
                <?php
                $data = $db->query("SELECT * FROM sirketler ORDER BY Adi");
                while ($d = $data->fetch(PDO::FETCH_ASSOC)) {
                ?>
                    <div class="col-lg-4">
                        <div class='card'>
                            <div class="thumbnail">
                                <img class="rounded float-right" style="width:100%; height:400px;" src="Resim/Şirket/<?= $d['thumbnails'] ?>">
                                
                            </div>

                            <div class="card-body">
                                <h4 class="m-0" style="width:350px; color:blue;"><?= $d['Adi'] ?></h4>
                                <span style="font-weight:bold;">Genel Bilgi: </span><span class="m-0" style="font-weight:500;"><?=$d['Bilgi']?></span><br>
                                <span style="font-weight:bold;">Geliştirici Sayısı: </span><span class="m-0"><?=$d['Geliştirici']?></span> <br>
                                <span style="font-weight:bold;">Kuruluş Tarihi: </span><span><?=$d['KurulusTarihi']?></span> 
                            </div>
                        </div>
                    </div>
                <?php }
                ?>
            </div>
        </div>
        <div class="modal fade" id="modal-lg">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Şirket Ekle</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id="saatdiv">
                        <form>
                            <label>Şirket Adı:</label>
                            <input style="margin-left:80px;" type="text" id="Ad"><br>
                            <label style="position:absolute;">Bilgi:</label>
                            <textarea style="margin-left:156px;" type="text-box" cols="50" placeholder="Bilgi" id='Bilgi'></textarea><br>
                            <label >Geliştirici Sayısı: </label>
                            <input style="margin-left:36px;" type="form" id='GSayısı'></input><br>
                            <label>Kuruluş Tarihi: </label>
                            <input type="date" style="margin-left:50px;" id='Ktarih'></input><br>
                            <label>Thumbnail: </label>
                            <input type="file" style="margin-left:70px;" id='thumbnail'></input><br>
                        </form>
                    </div>
                    <div id="sdr"></div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-primary" id="Save">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<?php
include "bottom.php";
?>
<script>
$('#Save').on('click',function(){
    var name = $('#Ad').val();
    var bilgi = $('#Bilgi').val();
    var GSayi = $('#GSayısı').val();
    var Kurulus_tarihi = $('#Ktarih').val();
    var thumbnail = $('#thumbnail').val();
    if(name ==="" || thumbnail==="" || bilgi===""){
        alert("Değerlerden biri eksik");
    }
    else{
    const data = {
            ad : name,
            bilgi : bilgi,
            Sayi : GSayi,
            Ktarihi :Kurulus_tarihi,
            thumbnail: thumbnail,
            };
    $.post('SirketEkleme.php',data,function(response){
})
}
})
</script>
<?php
include "bottom_footer.php";
?>