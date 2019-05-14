<?php 
	session_start();
	include_once ('db.php');

	if (isset($_POST['submit'])) {

		if ($_POST['password'] == $_POST['password2']) {
			$_POST['password'] =  md5($_POST['password']);

			 $sql = "UPDATE user_ SET Password = '".$_POST['password']."' WHERE User_ID = '".$_SESSION['User_ID']."' ";
        	$reset = mysqli_query($con,$sql);
        	header('Location: index.php');
		}
	
		
	}
	
 ?>


<!doctype html>
<html lang="en">
  <head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- title จะขึ้นตรง tab บนbrowser -->
    <title> ร้านค้าออนไลน์ !!!</title>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">

      <li class="nav-item active">
        <a class="nav-link" href="index.php">หน้าแรก <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="menu.php">เมนูร้านค้า </a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="cart.php">รถเข็นสินค้า </a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="checkout.php">สั่งซื้อและชำระเงิน </a>
      </li>
      <li class="nav-item dropdown ">

      <?php  if(isset($_SESSION['User_ID'])){ ?>
       <a class="nav-link dropdown-toggle" href="Logintest.php" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Member Login
      </a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
        <a class="dropdown-item" href="resetpwd.php">Password Reset</a>
        <a class="dropdown-item" href="editprofile.php">Profile</a>
        <a class="dropdown-item" href="logout.php">ออกจากระบบสมาชิก</a>
      </div>
    </li>

      <?php } else{ ?>
        <li class="nav-item ">
        <a class="nav-link" href="Logintest.php">Login</a>
      </li>   


        
  
      <?php } ?>  
        
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Join Us
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="add.php">Registration</a>
        </div>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="Contact.html">ติดต่อเรา </a>
      </li>
    </ul>
  </div>

  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
</nav>

  </head>



  <body>
  	<br><br>
<br><br><br><br>
	

  	<div class="container">
  		<div class="row">
  			<div class="col-2">

  			</div>
  			<div class="col-8">
  					<h1>Reset Password</h1>

  				<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
  					<tr><td>Password:</td><td>
  						<input type="password" class="form-control" name="password" maxlength="10"
  					</td></tr>

  					<tr><td>Confirm Password:</td><td>
  						<input type="password" class="form-control" name="password2" maxlength="10">
  					</td></tr>
  					<br>
  					<button type="submit" name="submit" class="btn btn-danger" value="submit">Submit</button>
  				</form>
  			</div>
  			<div class="col-2">

  			</div>
  		</div>
  	</div>




    

  	

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>