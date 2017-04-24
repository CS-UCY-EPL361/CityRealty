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

		<title>Calendar</title>
		<!-- Bootstrap Core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<!-- Custom CSS -->
		<link href="css/sb-admin.css" rel="stylesheet">

		<!-- Morris Charts CSS -->
		<link href="css/plugins/morris.css" rel="stylesheet">

		<!-- Custom Fonts -->
		<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
					<a class="navbar-brand">Ημερολόγιο</a>
				</div>
				<!-- Top Menu Items -->
				<ul class="nav navbar-right top-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <?php echo $_SESSION['id']; ?> <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li>
								<a href="profile_broker.php"><i class="fa fa-fw fa-user"></i>Προφίλ</a>
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
							<a href="broker_manage.php"><i class="fa fa-fw fa-edit"></i>Διαχείριση Ακινήτων</a>
							
						</li>
						<li>
							<a href="AddPropertyForm.php"><i class="fa fa-fw fa-home"></i>Προσθήκη νέου ακινήτου</a>
						</li>
						<li>
							<a href="calendar_broker.php"><i class="fa fa-fw fa-calendar"></i>Ημερολόγιο</a>
						</li>

					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</nav>

			<div id="page-wrapper">

				<div class="container-fluid">
					<div align="center">
						<iframe src="http://accounts.google.com/AccountChooser?continue=https%3A%2F%2Fcalendar.google.com%2Fcalendar%2Frender%3Fpli%3D1&hl=en&service=cl&scc=1" 
						style="border: 0" width="900" height="600" frameborder="0" scrolling="no"></iframe>
					</div>

				</div>
			</div>
	</body>

</html>
