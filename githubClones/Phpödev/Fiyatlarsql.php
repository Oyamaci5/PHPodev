<?php
$db = new PDO('mysql:host=localhost;dbname=website;charset=utf8','root', 'MYas2240.');
$ad = $_POST['ad'];
$id = $db->query("SELECT `Id` FROM `games` WHERE Name='$ad'");
$iddata = $id->fetch(PDO::FETCH_ASSOC);
$data = $iddata['Id'];
$Durma = $_POST['DP'];
$Steam = $_POST['Steam'];
$Epic = $_POST['Epic'];
$G2 = $_POST['G2'];
$HB= $_POST['HB'];
$db->query("INSERT INTO `fiyatlar`(`GameId`, `DurmaPlay`, `Steam`, `Epic`, `G2`, `HumbleBundle`) VALUES ('$data','$Durma','$Steam','$Epic','$G2','$HB')");
?>