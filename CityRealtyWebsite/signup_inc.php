<?php
session_start();
$conn = mysqli_connect("localhost", "USERNAME", "PASSWORD", "DATABASE");

if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

mysqli_query($conn,"SET NAMES utf8");

$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$display_name = $_POST['display_name'];
$email = $_POST['email'];
$password = sha1($_POST['password']);
$rdate = date("Y-m-d", time());

if ($sql = $conn->prepare("SELECT UserType FROM UserSimple WHERE Username =? OR Email=?")) {
	$sql->bind_param("ss", $display_name, $email);
	$sql->execute();
	$sql->bind_result($row);
	$sql->fetch();

	if(!$row) {
		if ($sql2 = $conn->prepare("INSERT INTO UserSimple (Username, Password, Name, Surname, Email) VALUES (?, ?, ?, ?, ?)")) {
			$sql2->bind_param("sssss", $display_name, $password, $first_name, $last_name, $email);
			$sql2->execute();
			$sql3 = $conn->prepare("UPDATE UserSimple SET UserType='Simple User', UserStatus='Active User', RegistrationDate='$rdate', LastLoggedin='$rdate' WHERE Username =?");
			$sql3->bind_param("s", $display_name);
			$sql3->execute();
			$_SESSION['signedup'] = "You've successfully signed up!";
			mysqli_close($conn);
			$sql->close();
			$sql2->close();
			$sql3->close();
			header("Location: index.php");
		}
	} else {
		$_SESSION['errormessage'] = "Username or email already used!";
		mysqli_close($conn);
		$sql->close();
		header("Location: index.php");

	}

}
?>
