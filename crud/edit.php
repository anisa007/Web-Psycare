<?php
	include('conn.php');
	
	$id=$_GET['id'];
	
	$negara=$_POST['negara'];
	$tahun=$_POST['tahun'];
	$jumlah=$_POST['jumlah'];
	
	mysqli_query($conn,"update data set negara='$negara', tahun='$tahun', jumlah='$jumlah' where id='$id'");
	header('location:index.php');

?>