<?php 
session_start();
include 'config/db.php';
$oke = mysqli_query($con,"select * from tb_sekolah where id_sekolah='1'");
$oke1 = mysqli_fetch_array($oke);
 ?>
<!DOCTYPE html>

<!-- No click -->
<!--<script type="text/javascript">
function mousedwn(e){try{if(event.button==2||event.button==3)return false}catch(e){if(e.which==3)return false}}document.oncontextmenu=function(){return false};document.ondragstart=function(){return false};document.onmousedown=mousedwn
</script>

<style type="text/css">
* : (input, textarea) {
    -webkit-touch-callout: none;
    -webkit-user-select: none;

}
</style>
<style type="text/css">
img {
  -webkit-touch-callout: none;
  -webkit-user-select: none;
    }
</style>-->

<html lang="en">
<head>
  <title>SMPN 2 Seputih Surabaya</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->  
  <link rel="shortcut icon" type="image/png" href="vendor/images/TEKNOKRAT.png"/>
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/login/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/login/vendor/animate/animate.css">
<!--===============================================================================================-->  
  <link rel="stylesheet" type="text/css" href="vendor/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->  
  <link rel="stylesheet" type="text/css" href="vendor/login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/login/css/util.css">
  <link rel="stylesheet" type="text/css" href="vendor/login/css/main.css">
<!--===============================================================================================-->
<link rel="stylesheet" href="vendor/node_modules/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendor/node_modules/simple-line-icons/css/simple-line-icons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="vendor/css/style.css">
  <!-- endinject -->
   <link href="vendor/sweetalert/sweetalert.css" rel="stylesheet" />

<style type="text/css">
    .large-header{
      position: relative;
      width: 100%;
      background: #111;
      overflow: hidden;
      background-size: cover;
      background-position: center center;
      z-index: 1;
    }

    .demo .large-header{
      background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/499416/demo-bg.jpg");
    }

    .main-title{
      position: absolute;
      margin: 0;
      padding: 0;
      color: #f9f1e9;
      text-align: center;
      top:50%;
      left: 50%;
      -webkit-transform: translate3d(-50%,-50%,0);
      transform: translate(-50%,-50%,0);
    }

    .demo .main-title{
      text-transform: uppercase;
      font-size: 4.2em;
      letter-spacing: 0.1em;
    }

    .main-title .thin{
      font-weight: 200;
    }

    @media only screen and (max-width: 768px){
      .demo .main-title{
        font-size: 3em;
      }
    }
  </style>




</head>
<body>
  <div class="limiter">
  <div class="container-login100">
    <div class="content">
      <div id="large-header" class="large-header">
        <canvas id="demo-canvas"></canvas>
        <h4 class="main-title">
          
       <center><img src="vendor/login/images/logo.png" alt="" height="72" width="72"></center>
        <form method="post" action="" class="login100-form validate-form">
          <span class="login100-form-title p-b-25">
          <h4><font color="#FFFFFF">Login</font></h4>
          </span>
          <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
            <span for="nis" class="label-input100"><font color="#FFFFFF"><strong> </strong></font></span>
            <input class="input100" type="text" name="username" placeholder="Masukan username" style="color: #FFFFFF;">
            <span class="focus-input100" data-symbol="&#xf206;"></span>
          </div>

          <div class="wrap-input100 validate-input m-b-23" data-validate="Password is required">
            <span for="Password" class="label-input100"><font color="#FFFFFF"><strong> </strong></font></span>
            <input class="input100" type="password" name="password" placeholder="Masukan password" style="color: #FFFFFF;">
            <span class="focus-input100" data-symbol="&#xf190;"></span>
          </div>
          
          
          <div class="wrap-input100 validate-input" data-validate="level is required">
            <span for="level" class="label-input100" required=""><strong></strong></span>
             <select name="level" class="form-control" required style="background-color: #708090;border-radius: 7px;color: #FFFFFF;font-weight: bold;">
                              <option value="" required="">Pilihan User :</option>
                             <option value="1"> Guru </option>
                              <option value="2"> Siswa </option>
                               <option value="3"> Admin </option>
                            </select>
          </div>


          <div class="text-right p-t-8 p-b-31">
            <a href="https://wa.me/6289632836213">
              Lupa password?
            </a>
          </div>
          
          <!--<div class="container-login100-form-btn m-b-23">
            <div class="wrap-login100-form-btn">
              <div class="login100-form-bgbtn"></div>-->
              <div align="center"><button style="height:50px;width:300px"style="height:50px;width:300px" value="LOGIN" name="Login" type="submit" class="btn btn-primary">
                Login
              </button></div>
            <!--</div>
          </div>-->
<br>
          <!--<div class="container-login100-form-btn">
            <div class="wrap-login100-form-btn">
              <div class="login100-form-bgbtn"></div>-->
              <div align="center" > <button style="height:50px;width:300px" value="daftar_elearning" type="submit" class="btn btn-outline-dark" onclick="window.location.href='Home/Registrasion.php'">
                <font color="#FFFFFF">Daftar Akun Siswa</font>
              </button></div>
            
<br>
<tr>
         <span class="pull-right"><div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li>
            <a>
              <span><?php
              $tanggal = date ("d");
              $bulan = array(1=>"Januari","Februari","Maret", "April", "Mei", "Juni","Juli","Agustus","September","Oktober", "November","Desember");
              $bulan = $bulan[date("n")];
              $tahun = date("Y");
              echo $tanggal ." ". $bulan ." ". $tahun;
              date_default_timezone_set('Asia/Jakarta');
              $jam=date("H:i:s");
              echo " - ". $jam."".""."";
              $a = date ("H");
               //if (($a>=1) && ($a<=10)){
              //echo " (Selamat Pagi) ";
              //}
              //else if(($a>10) && ($a<=13))
              //{
              //echo " (Selamat Siang) ";
              //}
              //else if (($a>13) && ($a<=15))
              //{
              //echo " (Selamat Sore) ";
              //}
              //else if (($a>15) && ($a<=17))
              //{
              //echo " (Selamat Petang) ";
              //}
              //else { echo " (Selamat Malam) ";
              //}
              ?></span>
            </a>
          </li>
          
        </ul>
      </div></span>

          <!--</div>
          </div>-->
        </form>
        <?php

  if($_SERVER['REQUEST_METHOD']=='POST'){
   $email = trim(mysqli_real_escape_string($con, $_POST['username']));
   $pass = sha1($_POST['password']); 
   $level = $_POST['level'];
   

  if ($level == "1") {
      $sql = mysqli_query($con,"SELECT * FROM tb_guru WHERE email='$email' AND password='$pass' AND status='Y' ") or die(mysqli_error($con)) ;
      $data = mysqli_fetch_array($sql);
      $id = $data [0];
      $cek = mysqli_num_rows($sql);

      if ($cek >0 ){
      $_SESSION['Guru'] = $id;
      $_SESSION['upload_gambar']= TRUE;
      
              echo "
              <script type='text/javascript'>
              setTimeout(function () {
              swal({
             title: 'Sukses',
              text:  'Login Berhasil..',
              type: 'success',
              timer: 3000,
              showConfirmButton: true
              });     
              },10);  
              window.setTimeout(function(){ 
              window.location.replace('Guru/index.php');
              } ,3000);   
              </script>";
             
      }else{
          echo "
          <script type='text/javascript'>
          setTimeout(function () {
          swal({
          title: 'Error',
           text:  'User ID / Password Salah Atau Belum Dikonfirmasi Oleh Guru !',
          type: 'error',
          timer: 3000,
          showConfirmButton: true
          });     
          },10);  
          window.setTimeout(function(){ 
          window.location.replace('?pages=login');
          } ,3000);   
          </script>";

      }

  } elseif ($level == "2") { 
    $sql = mysqli_query($con,"SELECT * FROM tb_siswa WHERE nis='$email' AND password='$pass' AND aktif='Y' ") or die(mysqli_error($con)) ;
      $data = mysqli_fetch_array($sql);
      $id = $data [0];
      $cek = mysqli_num_rows($sql);

      if ($cek >0 ){

      $_SESSION['Siswa'] = $id;
      $_SESSION['username']     = $data['nis'];
      $_SESSION['namalengkap']  = $data['nama_siswa'];
      $_SESSION['password']     = $data['password'];
      $_SESSION['nis']          = $data['nis'];
      $_SESSION['id_siswa']          = $data['id_siswa'];
      $_SESSION['kelas']        = $data['id_kelas'];
      $_SESSION['jurusan']        = $data['id_jurusan'];
       $_SESSION['tingkat']        = $data['tingkat'];
      mysqli_query($con,"UPDATE tb_siswa SET status='Online' WHERE id_siswa='$data[id_siswa]'");
             echo "
              <script type='text/javascript'>
              setTimeout(function () {
              swal({
              title: 'Sukses',
              text:  'Login Berhasil..',
              type: 'success',
              timer: 3000,
              showConfirmButton: true
              });     
              },10);  
              window.setTimeout(function(){ 
              window.location.replace('Siswa/index.php');
              } ,3000);   
              </script>";           
      }else{
               echo "
          <script type='text/javascript'>
          setTimeout(function () {
          swal({
          title: 'MAAF !',
          text:  'User ID / Password Salah Atau Belum Dikonfirmasi Oleh Siswa !',
          type: 'error',
          timer: 3000,
          showConfirmButton: true
          });     
          },10);  
          window.setTimeout(function(){ 
          window.location.replace('?pages=login');
          } ,3000);   
          </script>";


     }



}elseif ($level == "3") {
  $sql = mysqli_query($con,"SELECT * FROM tb_admin WHERE username='$email' AND password='$pass' AND aktif='Y' ") or die(mysqli_error($con)) ;
  $data = mysqli_fetch_array($sql);
  $id = $data [0];
  $cek = mysqli_num_rows($sql);

  if ($cek >0 ){
  $_SESSION['Admin'] = $id;
  $_SESSION['upload_gambar']= TRUE;
  
          echo "
          <script type='text/javascript'>
          setTimeout(function () {
          swal({
          title: 'Admin',
          text:  'Login Berhasil..',
          type: 'success',
          timer: 3000,
          showConfirmButton: true
          });     
          },10);  
          window.setTimeout(function(){ 
          window.location.replace('Admin/index.php');
          } ,3000);   
          </script>";
         
  }else{
      echo "
      <script type='text/javascript'>
      setTimeout(function () {
      swal({
      title: 'Gagal',
       text:  'User ID / Password Salah Atau Belum Dikonfirmasi Oleh Tele !',
      type: 'error',
      timer: 3000,
      showConfirmButton: true
      });     
      },10);  
      window.setTimeout(function(){ 
      window.location.replace('?pages=login');
      } ,3000);   
      </script>";


  }
}

}
?>
</h4>
      </div>
    </div>
  </div>
  

<script type="text/javascript" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/499416/TweenLite.min.js"></script>
<script type="text/javascript" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/499416/EasePack.min.js"></script>
<script type="text/javascript" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/499416/demo.js"></script>


  <div id="dropDownSelect1"></div>
  
<!--===============================================================================================-->
  <script src="vendor/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/login/vendor/bootstrap/js/popper.js"></script>
  <script src="vendor/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/login/vendor/daterangepicker/moment.min.js"></script>
  <script src="vendor/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
  <script src="vendor/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
  <script src="vendor/login/js/main.js"></script>
  <script src="vendor/node_modules/jquery/dist/jquery.min.js"></script>
  <script src="vendor/node_modules/popper.js/dist/umd/popper.min.js"></script>
  <script src="vendor/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
  <script src="vendor/sweetalert/sweetalert.min.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="../vendor/js/off-canvas.js"></script>
  <script src="../vendor/js/misc.js"></script>



</body>
</html>