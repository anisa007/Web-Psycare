
<?php
    $con = mysqli_connect("localhost","root");
    if (!$con)
      {
        die('Could not connect to server : ' . mysqli_error());
      }
    
    $selected = mysqli_select_db($con, "register");
    if (!$selected) 
    {
        die('Could not connect database : ' . mysqli_error());
    }
        
    $sql="INSERT INTO curhat(Nama, Email, Pesan)
          VALUES ('$_POST[nama]','$_POST[email]','$_POST[pesan]')";
    if (!mysqli_query($con, $sql))
      {
        die('ERROR: Pesan anda gagal di kirim silahkan coba lagi' . mysqli_error($con));
      }
      
     mysqli_close($con);
     header("Location: index.php");
     exit;
?>