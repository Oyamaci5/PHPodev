<?php 
$db = new PDO('mysql:host=localhost;dbname=website;charset=utf8','root', 'MYas2240.');
$ad = $_POST['ad'];
$sirket= $_POST['sirket'];
$CıkışTarihi =$_POST['CTarih'];
$Story = $_POST['Hikaye'];
$Tür = $_POST['Tür'];
$Poster = $_POST['Poster'];
$Poster = trim(str_replace("fakepath","",$Poster));
$Poster = trim(str_replace("C:\\","",$Poster));
$thumbnails = $_POST['thumbnail'];
$thumbnails = trim(str_replace("fakepath","",$thumbnails));
$thumbnails = trim(str_replace("C:\\","",$thumbnails));
$db->query("INSERT INTO `games`(`Name`, `Company`, `Release_Date`, `Story`, `genre`, `Poster`, 
`thumbnails`) VALUES ('$ad','$sirket','$CıkışTarihi','$Story','$Tür','$Poster','$thumbnails')");
$carousel = $_POST['Caro'];
$l = $_POST['length'];
$i = 0;
$id = $db->query("SELECT `Id` FROM `games` WHERE Name='$ad'");
$iddata = $id->fetch(PDO::FETCH_ASSOC);
$data = $iddata['Id'];
for($i = 0; $i<$l; $i++){
    $c = $carousel[$i];
    $db->query("INSERT INTO `resimler`(`GameId`, `Resim`) VALUES ('$data','$c')");
}
?>