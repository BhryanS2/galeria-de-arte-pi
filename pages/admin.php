<!DOCTYPE html>
<html lang="pt-BR">

<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
	<link href="https://fonts.googleapis.com/css2?family=Calistoga&display=swap" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="stylesheet" href="../css/form.css" />
	<link rel="stylesheet" href="../css/admin.css" />
	<title>Artplace</title>
</head>

<body>
	<h1>Dashborad - ADMIN</h1>
	<?php
	require_once('../php/connection.php');
	session_start();
	if (!isset($_SESSION['user'])) {
		echo "<script>window.location.href = '../pages/login.php'</script>";
	}
	if ($_SESSION['user']['role'] != 'admin') {
		echo "<script>window.location.href = '../pages/login.php'</script>";
	}
	?>
	<main>
		<div class="container">
			<a href="./admin/users.php" class="card">
				<div class="card-body">
					<div class="card-body-content">
						<div class="card-body-content-item">
							<?php
							$sql = "SELECT count(*) as users FROM usuarios";
							$result = mysqli_query($conn, $sql);
							$row = mysqli_fetch_assoc($result);
							?>
							<h3>Usuários cadastrados</h3>
							<p><?= $row['users'] ?></p>
						</div>
					</div>
				</div>
			</a>
			<a href="./admin/messages.php" class="card">
				<div class="card-body">
					<div class="card-body-content">
						<div class="card-body-content-item">
							<h3>Mensagens enviadas</h3>
							<p>
								<?php
								$sql = "SELECT count(*) as messages FROM mensagens";
								$result = mysqli_query($conn, $sql);
								$row = mysqli_fetch_assoc($result);
								?>
								<?= $row['messages'] ?>
							</p>
						</div>
					</div>
				</div>
			</a>
			<a href="./admin/posts.php" class="card">
				<div class="card-body">
					<div class="card-body-content">
						<div class="card-body-content-item">
							<h3>Conteúdos cadastrados</h3>
							<p>
								<?php
								$sql = "SELECT count(*) as contents FROM post";
								$result = mysqli_query($conn, $sql);
								$row = mysqli_fetch_assoc($result);
								?>
								<?= $row['contents'] ?>
							</p>
						</div>
					</div>
				</div>
			</a>
			<a href="./admin/quiz.php" class="card">
				<div class="card-body">
					<div class="card-body-content">
						<div class="card-body-content-item">
							<h3>Perguntas cadastrados</h3>
							<p>
								<?php
								$sql = "SELECT count(*) as count FROM quiz";
								$result = mysqli_query($conn, $sql);
								$row = mysqli_fetch_assoc($result);
								?>
								<?= $row['count'] ?>
							</p>
						</div>
					</div>
				</div>
			</a>
			<a href="./admin/answers.php" class="card">
				<div class="card-body">
					<div class="card-body-content">
						<div class="card-body-content-item">
							<h3>Total de reposta do quiz</h3>
							<p>
								<?php
								$sql = "SELECT count(*) as count FROM usuarioRespondeQuiz";
								$result = mysqli_query($conn, $sql);
								$row = mysqli_fetch_assoc($result);
								?>
								<?= $row['count'] ?>
							</p>
						</div>
					</div>
				</div>
			</a>
		</div>
	</main>
</body>

</html>
