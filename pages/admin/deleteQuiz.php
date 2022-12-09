<?php
require_once '../../php/connection.php';
$conn = newConn();


$id = isset($_GET['id']) ? $_GET['id'] : null;

$sql_delete = "DELETE FROM quiz WHERE id = $id";
$question_delete = "DELETE FROM questoes4respostas WHERE id = $id";
$trueOrFalse_delete = "DELETE FROM trueOrFalse WHERE id = $id";

$conn->query($sql_delete);
$conn->query($question_delete);
$conn->query($trueOrFalse_delete);

header('Location: ./quiz.php');
