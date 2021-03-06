<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Add New Broker</title>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Bootstrap Core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom CSS -->
	<link href="css/sb-admin.css" rel="stylesheet">

	<!-- Morris Charts CSS -->
	<link href="css/plugins/morris.css" rel="stylesheet">

	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- Custom Fonts -->
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->


</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand">Προσθήκη νέου μεσίτη</a>

			</div>
			<!-- Top Menu Items -->
			<ul class="nav navbar-right top-nav">

				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <?php echo $_SESSION['id']; ?> <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li>
						<a href="profile_admin.php"><i class="fa fa-fw fa-user"></i> Προφίλ</a>
						</li>
						<li class="divider"></li>
						<li>
							<a href="logout_inc.php"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
						</li>
					</ul>
				</li>
			</ul>
			<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav side-nav">
					<li>
						<a href="admin.php"><i class="fa fa-fw fa-edit"></i>Διαχείριση ακινήτων</a>

					</li>
					<li>
						<a href="calendar_admin.php"><i class="fa fa-fw fa-calendar"></i>Ημερολόγιο</a>
					</li>
					<li>
						<a href="#"><i class="fa fa-users"></i> Νέος Μεσίτης</a>
					</li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>

		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row" >
					<div class="col-lg-12">
						<h1 class="page-header">Προσθήκη νέου μεσίτη</h1>
					</div>
				</div>

				<div class="container">

					<div class="row">
						<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							<form role="form" action="signup2_inc.php" method="POST">
								<div class="row">
									<small> Όνομα Μεσίτη</small>
									<span runat="server" ID="required" style="color:Red;" visible="false"> *</span>
									<br>
									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="form-group">
											<input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="όνομα" tabindex="1" autocomplete="on" required data-validation-required-message="Please enter a Name.">
											<input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="επίθετο" tabindex="2" autocomplete="on" required data-validation-required-message="Please enter a Surname">
										</div>
									</div>
								</div>

								<small> Username</small>
								<span runat="server" ID="required" style="color:Red;" visible="false"> *</span>
								<div class="form-group">
									<input type="text" name="display_name" id="display_name" class="form-control input-lg" placeholder="Username" tabindex="3">
								</div>

								<div class="form-group">
									<small> Φύλο</small>
									<span runat="server" ID="required" style="color:Red;" visible="false"> *</span>
									<div class="row">
										<div class="col-md-8 ">
											<label>
												<input type="radio" name="man">
												Άντρας </label>
												<label>
													<input type="radio" name="woman">
													Γυναίκα </label>
												</div>
											</div>
										</div>

										<small>Ειδικότητα</small>
										<span runat="server" ID="profession" style="color:Red;" visible="false"> *</span>
										<select class="form-control" name="">
											<option value="">Διαχειριστής</option>
											<option selected value="">Μεσίτης</option>
										</select>
										<br>
										<small>Ημερομηνία Γέννησης:</small>
										<select class="form-control" name="month">
											<option value="01">Γενάρης</option>
											<option value="02">Φεβράρης</option>
											<option value="03">Μάρτιος</option>
											<option value="04">Απρίλης</option>
											<option value="05">Μάης</option>
											<option value="06">Ιούνης</option>
											<option value="07">Ιούλης</option>
											<option value="08">Αύγουστος</option>
											<option value="09">Σεμπτέβρης</option>
											<option value="10">Οκτώβρης</option>
											<option value="11">Νοέμβρης</option>
											<option value="12">Δεκέμβρης</option>
											<option selected value="">---</option>
										</select>
										<select name="day" class="form-control">
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
											<option selected value="">--</option>
										</select>
										<select name="year" class="form-control">
											<option value="2012">2017</option>
											<option value="2012">2016</option>
											<option value="2012">2015</option>
											<option value="2012">2014</option>
											<option value="2012">2013</option>
											<option value="2012">2012</option>
											<option value="2011">2011</option>
											<option value="2010">2010</option>
											<option value="2009">2009</option>
											<option value="2008">2008</option>
											<option value="2007">2007</option>
											<option value="2006">2006</option>
											<option value="2005">2005</option>
											<option value="2004">2004</option>
											<option value="2003">2003</option>
											<option value="2002">2002</option>
											<option value="2001">2001</option>
											<option value="2000">2000</option>
											<option value="1999">1999</option>
											<option value="1998">1998</option>
											<option value="1997">1997</option>
											<option value="1996">1996</option>
											<option value="1995">1995</option>
											<option value="1994">1994</option>
											<option value="1993">1993</option>
											<option value="1992">1992</option>
											<option value="1991">1991</option>
											<option value="1990">1990</option>
											<option value="1989">1989</option>
											<option value="1988">1988</option>
											<option value="1987">1987</option>
											<option value="1986">1986</option>
											<option value="1985">1985</option>
											<option value="1984">1984</option>
											<option value="1983">1983</option>
											<option value="1982">1982</option>
											<option value="1981">1981</option>
											<option value="1980">1980</option>
											<option value="1979">1979</option>
											<option value="1978">1978</option>
											<option value="1977">1977</option>
											<option value="1976">1976</option>
											<option value="1975">1975</option>
											<option value="1974">1974</option>
											<option value="1973">1973</option>
											<option value="1972">1972</option>
											<option value="1971">1971</option>
											<option value="1970">1970</option>
											<option value="1969">1969</option>
											<option value="1968">1968</option>
											<option value="1967">1967</option>
											<option value="1966">1966</option>
											<option value="1965">1965</option>
											<option value="1964">1964</option>
											<option value="1963">1963</option>
											<option value="1962">1962</option>
											<option value="1961">1961</option>
											<option value="1960">1960</option>
											<option value="1959">1959</option>
											<option value="1958">1958</option>
											<option value="1957">1957</option>
											<option value="1956">1956</option>
											<option value="1955">1955</option>
											<option value="1954">1954</option>
											<option value="1953">1953</option>
											<option value="1952">1952</option>
											<option value="1951">1951</option>
											<option value="1950">1950</option>
											<option selected value="">---</option>
										</select>

										<br>
										<small>Διεύθυνση</small>
										<span runat="server" ID="required" style="color:Red;" visible="false"> *</span>
										<div class="form-group">
											<input type="text" name="Street" id="Street" class="form-control input-lg" placeholder="Οδός" tabindex="3">
											<input type="text" name="Street_num" id="Street_num" class="form-control input-lg" placeholder="Αριθμός" tabindex="3">
										</div>
										<div>
											<input type="text" name="City" id="City" class="form-control input-lg" placeholder="Πόλη" tabindex="3">
										</div>
										<div class="form-group">
											<input type="text" name="country_name" id="country_name" class="form-control input-lg" placeholder="Χώρα" tabindex="3">
										</div>

										<small>Email Address</small>
										<span runat="server" ID="required" style="color:Red;" visible="false"> *</span>
										<br>
										<div class="form-group">
											<input type="email" name="email" id="email" class="form-control input-lg" placeholder="e.g. example@domain.com" tabindex="4" autocomplete="on" size="47" required>
										</div>

										<small>Τηλέφωνο</small>
										<span runat="server" ID="required" style="color:Red;" visible="false"> *</span>
										<br>
										<div class="form-group">
											<input type="tel" name="phone" id="phone" class="form-control input-lg" placeholder="Αριθμός τηλεφώνου" tabindex="4" required>
										</div>
										<div class="row">
											<small>Κωδικός</small>
											<span runat="server" ID="required" style="color:Red;" visible="false"> *</span>
											<br>
											<div class="col-xs-12 col-sm-6 col-md-6">
												<div class="form-group">
													<input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="5" required pattern=".{6,}">
												</div>
											</div>
											<div class="col-xs-12 col-sm-6 col-md-6">
												<div class="form-group">
													<input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-lg" placeholder="Confirm Password" tabindex="6" required>
												</div>
											</div>

										</div>
										<hr class="colorgraph">
										<div class="row">
											<div class="col-xs-12 col-md-6">
												<input type="submit" value="Προσθήκη" class="btn btn-primary btn-block btn-lg" tabindex="7">
											</div>
											<div class="col-xs-12 col-md-6">
												<button type="reset" class="btn btn-default btn-lg">
													Reset
												</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<!-- Custom Theme JavaScript -->

						<script>
							var password = document.getElementById("password"),
							confirm_password = document.getElementById("password_confirmation");
							function validatePassword() {
								if (password.value != confirm_password.value) {
									confirm_password.setCustomValidity("Passwords Don't Match");
								} else {
									confirm_password.setCustomValidity('');
								}
							}
							password.onchange = validatePassword;
							confirm_password.onkeyup = validatePassword;
						</script>

					</div>

				</body>
				</html>
