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
	<title>Resposta</title>
</head>

<body>
	<h1>Respostas cadastrados</h1>
	<header>
		<a href="../admin.php">Voltar</a>
	</header>
	<div class="container">
		<?php
		require_once 'connection.php';

		$sql_res = "SELECT
		usuarioRespondeQuiz.id,
		usuarios.name,
		usuarioRespondeQuiz.resposta_usuario as resposta
		 FROM usuarioRespondeQuiz
		inner join usuarios
		on usuarioRespondeQuiz.id_usuario = usuarios.id";
		$res_res = mysqli_query($conn, $sql_res);
		while ($res = mysqli_fetch_assoc($res_res)) :
		?>
			<div class="card">
				<div class="card-header">
					<h2><?= $res['id'] ?></h2>
				</div>
				<div class="card-body">
					<div class="card-body-content">
						<div class="card-body-content-item">
							<h3><?= $res['name'] ?></h3>
							<p>
								<?= $res['resposta'] ?>
							</p>
						</div>
					</div>
				</div>
			</div>
		<?php endwhile; ?>
	</div>
</body>

</html>
