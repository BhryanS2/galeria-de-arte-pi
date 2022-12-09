<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../css/admin.css" />
	<link rel="stylesheet" href="../../css/admin_pages.css" />
	<title>Quiz</title>
</head>

<body>
	<h1>Quiz cadastrados</h1>
	<header>
		<a href="../admin.php">Voltar</a>
	</header>
	<div class="container">
		<form class="card" action="./send/quiz.php" method="POST">
			<div class="inputGroup">
				<label for="enunciado">Enunciado</label>
				<input type="text" name="enunciado" required />
			</div>
			<div class="inputGroup">
				<label for="fonte">Fonte</label>
				<input type="text" name="fonte" required />
			</div>
			<div class="inputGroup">
				<label for="questoes">Questões</label>
				<label for="">Verdadei ou falso</label>
				<input type="radio" name="tipo" value="vf" onclick="activeVF()">
				<label for="">4 respostas</label>
				<input type="radio" name="tipo" value="questions" onclick="activeRespostas()">
			</div>
			<div class="inputGroup" id="verdadeiroFalso">
			</div>
			<div class="inputGroup" id="questions">
			</div>
			<div class="inputGroup">
				<label for="comentario">Comentário</label>
				<input type="text" name="comentario" required />
			</div>
			<div class="buttons">
				<button class="btn" type="submit">Salvar</button>
			</div>
		</form>
		<?php
		require_once 'connection.php';

		$sql_quiz = "SELECT * FROM quiz";
		$sql_questoes4respostas = "SELECT * FROM questoes4respostas";
		$sql_trueOrFalse = "SELECT * FROM trueOrFalse";

		$result_quiz = mysqli_query($conn, $sql_quiz);
		$result_questoes4respostas = mysqli_query($conn, $sql_questoes4respostas);
		$result_trueOrFalse = mysqli_query($conn, $sql_trueOrFalse);

		$quiz = mysqli_fetch_all($result_quiz, MYSQLI_ASSOC);
		$questoes4respostas = mysqli_fetch_all($result_questoes4respostas, MYSQLI_ASSOC);
		$trueOrFalse = mysqli_fetch_all($result_trueOrFalse, MYSQLI_ASSOC);

		$questoes = array();
		$questoes = array_merge($questoes4respostas, $trueOrFalse);
		?>
		<?php
		foreach ($quiz as $quiz) :
		?>
			<form class="card" action="./send/quiz.php?id=<?= $quiz['id'] ?>" method="POST">
				<div class="inputGroup">
					<label for="enunciado">Enunciado</label>
					<input type="text" name="enunciado" required value="<?= $quiz['enunciado'] ?>" />
				</div>
				<div class="inputGroup">
					<label for="fonte">Fonte</label>
					<input type="text" name="fonte" required value="<?= $quiz['fonte'] ?>" />
				</div>
				<div class="inputGroup">
					<label for="questoes">Questões</label>
					<?php
					$questao_id = $quiz['questao'];
					$questao = $questoes[$questao_id];
					array_shift($questao);
					?>
					<select name="resposta">
						<?php
						foreach ($questao as $questao_id => $questao) :
							preg_match('/\d+/', $questao_id, $matches);
							$questao_id = $matches[0];


						?>
							<option value="<?= $questao_id ?>"><?= $questao ?></option>
						<?php endforeach; ?>
					</select>
				</div>
				<div class="inputGroup">
					<label for="comentario">Comentário</label>
					<input type="text" name="comentario" required value="<?= $quiz['comentario'] ?>" />
				</div>
				<div class="buttons">
					<button class="btn" type="submit">Salvar</button>
					<a href="./deleteQuiz.php?id=<?= $quiz['id'] ?>">Deletar</a>
				</div>
			</form>
		<?php endforeach; ?>
	</div>
	<script>
		function activeVF() {
			const element = document.getElementById('verdadeiroFalso');
			const elementQ = document.getElementById('questions');
			elementQ.innerHTML = '';

			element.innerHTML = `
				<label for="">
					Verdadeiro
					<input type="radio" name="resposta" value="1">
				</label>
				<label for="">
					Falso
					<input type="radio" name="resposta" value="2">
				</label>
			`;
		}

		function activeRespostas() {
			const element = document.getElementById('verdadeiroFalso');
			const elementQ = document.getElementById('questions');
			element.innerHTML = '';
			elementQ.innerHTML = `
				<label for="">
					A
					<input type="radio" name="resposta" value="1">

					<input type="text" name="alternative1" >
				</label>
				<label for="">
					B
					<input type="radio" name="resposta" value="2">

					<input type="text" name="alternative2" >
				</label>
				<label for="">
					C
					<input type="radio" name="resposta" value="3">

					<input type="text" name="alternative3" >
				</label>
				<label for="">
					D
					<input type="radio" name="resposta" value="4">

					<input type="text" name="alternative4" >
				</label>
			`;
		}
	</script>
</body>

</html>
