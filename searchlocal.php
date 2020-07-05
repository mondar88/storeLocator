<?php
			include_once 'includes/dbh.inc.php';
?>

<!DOCTYPE html>

<html>
	<head>
		<title>storeFinder</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</head>
	
	<body>
		<div class="container">
		<h1 class="text-center">Search function for local store</h1>
		<h2 class="text-center">after selecting city from the dropdown and entering a locality the function looks up into the database to through if a store exists nearby </h2>
		
		
			<div class="col-md-9 col-md-offset-2">
				<form role="form" method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="col-sm-9 form-group">
							<label for="email">City</label>
							<select class="form-control" id="city" name="city"><option>Bangalore</option><option>Hyderabad</option><option>Delhi</option></select>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-9 form-group">
							<label for="subject">Locality</label>
							<input type="text" class="form-control" id="local" name="local" placeholder="Type your area/locality" maxlength="50">
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-9 form-group">
							<label for=""></label>
							<button type="submit" class="btn btn-lg btn-success btn-block" name="search" maxlength="">search</button>
						</div>
					</div>
				</form>	
			</div>
			<?php
			include_once 'includes/dbh.inc.php';
			$city=$_POST['city'];
			$area=$_POST['local'];
			if(isset($_POST['search'])){
				$sql="SELECT * from stores where locality='".$area."'";
				$result=mysqli_query($conn, $sql);
				$result_check=mysqli_num_rows($result);
				if($result_check>0){
					$store=mysqli_fetch_assoc($result);
					
					echo "visit our ".$area." store at ".$store['address'];
				}
				
				else{
					$sqlo="SELECT * from stores where city='".$city."'";
					$resulto=mysqli_query($conn, $sqlo);
					//$result_checko=mysqli_num_rows($resulto);
					//if($result_checko>0){
						echo "sorry no store found now! but you can check the nearest to your location in the city of ".$city.":- <br>";
						while ($store=mysqli_fetch_assoc($resulto)){
							echo $store['address']."<br>";
							echo "<br>";
						}
					//}
				}
			}
		?>
		
		</div>
	</body>
</html>