<?php
	include('conn.php');
	$id=$_GET['id'];
	mysqli_query($conn,"delete from data where id='$id'");
	header('location:index.php');

?>