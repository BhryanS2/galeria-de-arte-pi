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
	<title>Post</title>
</head>

<body>
	<h1>Post cadastrados</h1>
	<header>
		<a href="../admin.php">Voltar</a>
	</header>
	<div class="container">
		<?php
		require_once 'connection.php';

		$sql_posts = "SELECT * FROM post";
		$result_post = mysqli_query($conn, $sql_posts);
		while ($post = mysqli_fetch_assoc($result_post)) :
			$timeJoined = strtotime($post['create_at']);
		?>
			<div class="card">
				<div class="card-header">
					<h2><?= $post['id'] ?></h2>
				</div>
				<div class="card-body">
					<div class="card-body-content">
						<div class="card-body-content-item">
							<h3><?= $post['titulo'] ?></h3>
							<p>
								<?= $post['resumo'] ?>
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
