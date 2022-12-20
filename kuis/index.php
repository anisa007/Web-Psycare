<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test</title>
    <link rel="stylesheet" href="stylekuis.css">
</head>
<body >
    <div id="container">
        <div id="start">Test Depressi</div>
        <div id="quiz" style="display: none">
            <div id="question"></div>
            <div id="qImg"></div>
            <div id="choices">
                <div class="choice" id="A" onclick="checkAnswer('A')"></div>
                <div class="choice" id="B" onclick="checkAnswer('B')"></div>
                <div class="choice" id="C" onclick="checkAnswer('C')"></div>
            </div>
            <div id="timer">
                <div id="counter"></div>
                <div id="btimeGauge"></div>
                <div id="timeGauge"></div>
            </div>
            <div id="progress"></div>
        </div>
        <div id="scoreContainer" style="display: none"></div>
    </div>
    <script src="quiz.js"></script>
</body>
<body style="background-image: url(img/wall.png);">
     <?php 
        $con = mysqli_connect("localhost","root");
        if (!$con)
          {
            die('Could not connect: ' . mysqli_error());
          }
        //select a database & table
        $selected = mysqli_select_db($con, "register");
        if (!$selected) //Apabila baru pertama kali dijalankan akan membuat database dan tabel baru
        { 
              //Membuat database baru
            $sql="CREATE DATABASE register";
            if (mysqli_query($con, $sql)) {
              echo "Database created successfully \n";
            } else {
              echo "Error creating database: " . mysqli_error($con);
            }    
              //Connect ke database
            if (!mysqli_select_db($con, "register")) {
              echo "Error connect to database: " . mysqli_error($con);
            } else {
              //Membuat tabel 
                $sql="CREATE TABLE curhat
                (ID INT NOT NULL AUTO_INCREMENT, 
                  PRIMARY KEY (ID),
                  Nama varchar(100),
                  Email varchar(100),
                  pesan varchar (500)
                )";
                
                if (mysqli_query($con, $sql)) {
                  echo "Table created successfully";
                } else {
                  echo "Error creating Table : " . mysqli_error($con);
                }
            }                
        } else { //Apabila sudah ada database dan tabelnya, maka menunjukan isi dari tabel tersebut
            mysqli_select_db($con,"register");
            
        }
        mysqli_close($con);
    ?>
    <center> 
      <h1 style="color:#191970">TELL US</h1>
    <p style="color :#191970"> Cerita anda aman disini </p>  
  <form action="kirim.php" method="post">
    <p><input type="text" name="nama" placeholder="Nama anda" size="30" required /></p>
    <p><input type="email" name="email" placeholder="Email valid" size="30" required /></p>
    <p><textarea name="pesan" placeholder="Pesan anda" rows="7" cols="50" required></textarea>
    <p><input type="submit" name="kirim" value="Kirim Pesan" /> <input type="reset" value="Hapus Text" /></p>
  </form>
  </center>
</body>
</html>