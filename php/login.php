<?php
require('./connection.php');
$email = isset($_POST['email']) ? $_POST['email'] : '';
$password = isset($_POST['password']) ? $_POST['password'] : '';

$hash = md5($password);

$sql = "SELECT * FROM usuarios WHERE email = '$email' AND senha = '$hash'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

if ($row) {
	session_start();
	$_SESSION['user'] = [
		'email' => $row['email'],
		'name' => $row['name'],
		'id' => $row['id'],
		'role' => $row['tipo']
	];
	echo "<script>window.location.href = '../index.php'</script>";
} else {
	echo "<script>alert('Usuário ou senha incorretos!')</script>";
	echo "<script>window.location.href = '../pages/login.php'</script>";
}
