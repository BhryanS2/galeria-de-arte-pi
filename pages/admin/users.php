<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../css/style.css" />
	<link rel="stylesheet" href="../../css/form.css" />
	<link rel="stylesheet" href="../../css/admin.css" />
	<link rel="stylesheet" href="../../css/admin_pages.css" />
	<title>Usuário</title>
</head>

<body>
	<h1>Usuários cadastrados</h1>
	<header>
		<a href="../admin.php">Voltar</a>
	</header>
	<div class="container">
		<?php
		require_once 'connection.php';

		$sql_users = "SELECT * FROM usuarios";
		$result_users = mysqli_query($conn, $sql_users);
		while ($user = mysqli_fetch_assoc($result_users)) :
			$timeJoined = strtotime($user['create_at']);
		?>
			<div class="card">
				<div class="card-header">
					<h2><?= $user['id'] ?></h2>
				</div>
				<div class="card-body">
					<div class="card-body-content">
						<div class="card-body-content-item">
							<h3><?= $user['name'] ?></h3>
							<p>
								<?= $user['email'] ?>
							</p>
						</div>
					</div>
				</div>
				<div class="card-footer">
					<p>
						criado em: <?= date('d/m/Y', $timeJoined) ?>
					</p>
				</div>
			</div>
		<?php endwhile; ?>
	</div>

</body>

</html>
