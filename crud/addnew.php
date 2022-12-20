<?php
	include('conn.php');
	
	$negara=$_POST['negara'];
	$tahun=$_POST['tahun'];
	$jumlah=$_POST['jumlah'];
	
	mysqli_query($conn,"insert into data (negara, tahun, jumlah) values ('$negara', '$tahun', '$jumlah')");
	header('location:index.php');

?>