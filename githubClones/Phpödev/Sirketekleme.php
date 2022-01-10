<?php
$db = new PDO('mysql:host=localhost;dbname=website;charset=utf8', 'root', 'MYas2240.');
$ad = $_POST['ad'];
$bilgi = $_POST['bilgi'];
$Sayi = $_POST['Sayi'];
$Ktarihi = $_POST['Ktarihi'];
$thumbnails = $_POST['thumbnail'];
$thumbnails = trim(str_replace("fakepath","",$thumbnails));
$thumbnails = trim(str_replace("C:","",$thumbnails));
$thumbnails = trim(str_replace("\\","",$thumbnails));
$db->query("INSERT INTO `sirketler`(`Adi`, `KurulusTarihi`, `Bilgi`, `Geliştirici`, `thumbnails`) 
VALUES ('$ad','$Ktarihi','$bilgi','$Sayi','$thumbnails')");
?>
