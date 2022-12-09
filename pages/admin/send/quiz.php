<?php
require_once '../../../php/connection.php';
$conn = newConn();


$id = isset($_GET['id']) ? $_GET['id'] : null;


if (!$id) {
	inserir();
} else {
	update($id);
}

function inserir()
{
	global $conn;
	$dados = $_POST;

	$enunciado = isset($dados['enunciado']) ? $dados['enunciado'] : null;
	$fonte = isset($dados['fonte']) ? $dados['fonte'] : null;
	$vf = isset($dados['vf']) ? $dados['vf'] : null;

	$comentario = isset($dados['comentario']) ? $dados['comentario'] : null;
	$resposta_certa = isset($dados['resposta']) ? $dados['resposta'] : null;

	$sql_questao = '';

	$alternative1 = isset($dados['alternative1']) ? $dados['alternative1'] : null;
	$alternative2 = isset($dados['alternative2']) ? $dados['alternative2'] : null;
	$alternative3 = isset($dados['alternative3']) ? $dados['alternative3'] : null;
	$alternative4 = isset($dados['alternative4']) ? $dados['alternative4'] : null;

	$sql_alternatives = "INSERT INTO questoes4respostas (pergunta1, pergunta2, pergunta3, pergunta4) VALUES ('$alternative1', '$alternative2', '$alternative3', '$alternative4')";

	$alternative1 = isset($vf['alternative1']) ? $vf['alternative1'] : null;
	$alternative2 = isset($vf['alternative2']) ? $vf['alternative2'] : null;
	$sql_vf = "INSERT INTO trueOrFalse (pergunta1, pergunta2) VALUES ('$alternative1', '$alternative2')";


	if ($dados['tipo'] == 'questions') {
		$sql_questao = $sql_alternatives;
	} else {
		$sql_questao = $sql_vf;
	}

	$result = $conn->query($sql_questao);
	$lastId = $conn->insert_id;
	$sql_quiz = "INSERT INTO quiz (enunciado, fonte, questao, resposta_certa, comentario) VALUES ('$enunciado', '$fonte', '$lastId', '$resposta_certa', '$comentario')";
	$result = $conn->query($sql_quiz);
}

function update()
{
	global $conn, $id;
	$dados = $_POST;

	$enunciado = isset($dados['enunciado']) ? $dados['enunciado'] : null;
	$fonte = isset($dados['fonte']) ? $dados['fonte'] : null;

	$comentario = isset($dados['comentario']) ? $dados['comentario'] : null;
	$resposta_certa = isset($dados['resposta']) ? $dados['resposta'] : null;


	$sql_quiz = "UPDATE quiz SET enunciado = '$enunciado', fonte = '$fonte', resposta_certa = '$resposta_certa', comentario = '$comentario' WHERE id = '$id'";
	$result = $conn->query($sql_quiz);

	print_r($sql_quiz);
}

header('Location: ../quiz.php');
