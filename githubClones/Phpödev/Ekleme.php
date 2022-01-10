<?php
include "top.php";
include "top.menu.php";
?>
<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row" style="justify-content:center;">
                <form action="Eklemesql.php" method="post" style="width:450px;">
                    <div class="form-group">
                        <label>Oyun adı</label>
                        <input type="text" class="form-control" placeholder="Oyun adı" id="name">
                    </div>
                    <div class="form-group">
                        <label>Şirket adı</label>
                        <input type="text" class="form-control" placeholder="Şirket" id="Sirket">
                    </div>
                    <div class="form-group">
                        <label>Çıkış tarihi:</label>
                        <input type="date" id="CikisTarihi">
                    </div>
                    <div class="form-group">
                        <label>Hikaye</label>
                        <textarea class="form-control" rows="5" placeholder="Hikaye" id='Story'></textarea>
                    </div>
                    <div class="form-group">
                        <label>Türü</label>
                        <select class="custom-select my-1 mr-sm-2" id="Tür">
                            <option selected>Choose...</option>
                            <option>Adventure</option>
                            <option>RPG (Role-Playing)</option>
                            <option>Action</option>
                            <option>Strategy</option>
                            <option>FPS</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Poster</label>
                        <input type="file" class="form-control-file" id="Poster">
                    </div>
                    <div class="form-group">
                        <label>Thumbnails</label>
                        <input type="file" class="form-control-file" id="Thumbnails">
                    </div>
                    <div class="form-group">
                        <label>Carousel</label>
                        <input multiple type="file" class="form-control-file" id="Carousel">
                    </div>
                    <span>Sitelerdeki Fiyatları:</span>
                    <button type="button" class="btn btn-dark" id="Sec" data-toggle="modal" data-target="#modal-lg">Seç</button>
                    <br>
                    <button type="button" class="btn btn-dark" id="Tikla">Ekle</button>
                </form>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modal-lg">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Siteler</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id="saatdiv">
                        <form>
                            <label>Oyun ismi:</label>
                            <input type="text" id="nameD" style="margin-left:34px;"><br>
                            <label>DurmaPlay:</label>
                            <input type="text" id="DP" style="margin-left:26px;"><br>
                            <label>Steam:</label>
                            <input type="text" id="steam"style="margin-left:60px;"><br>
                            <label>Epic:</label>
                            <input type="text" id="Epic"style="margin-left:75px;"><br>
                            <label>G2:</label>
                            <input type="text" id="G2"style="margin-left:87px;"><br>
                            <label>HumbleBundle:</label>
                            <input type="text" id="HB"><br>
                        
                        </form>
                    </div>
                    <div id="sdr"></div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-primary" id="Save">Kaydet</button>
                    </div>
                </div>
            </div>
        </div>
</div>
<?php
include "bottom.php";
?>
<script>
    $('#Tikla').click(function() {
        var name = $('#name').val();
        var sirketname = $('#Sirket').val();
        var Tarih = $('#CikisTarihi').val();
        var Hikaye = $('#Story').val();
        var Tur = $('#Tür').val();
        var Poster = $('#Poster').val();
        var Thumbnails = $('#Thumbnails').val();
        var Caro = document.getElementById("Carousel").files;
        var text = [];
        for(i = 0;i<Caro.length;i++){
            text[i] = Caro[i]['name'];
        }
        var length = Caro.length;
        if(name != ""||Tarih !=""|| length >= 3){
        const data = {
                ad : name,
                sirket : sirketname,
                CTarih:Tarih,
                Hikaye:Hikaye,
                Tür : Tur,
                Poster : Poster,
                thumbnail: Thumbnails,
                Caro:text,
                length:length
        }
    $.post('Eklemesql.php', data, function(response) {});
    }
    else{
        alert("Error");
    }
    })
    
    $('#Save').click(function(){
        var ad = $('#nameD').val();
        var Dp = $('#DP').val();
        var Steam = $('#steam').val();
        var Epic = $('#Epic').val();
        var g2 = $('#G2').val();
        var hb = $('#HB').val();
        const dataoyun = {
            ad:ad,
            DP: Dp,
            Steam : Steam,
            G2 : g2,
            Epic:Epic,
            HB:hb,
        }
    $.post('Fiyatlarsql.php', dataoyun, function(response) {});
    })
</script>

<?php
include "bottom_footer.php";
?>