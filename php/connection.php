<?php
$server_url = $_SERVER['SERVER_NAME'];
$server = "localhost";
$user = "root";
$pass = "";
$db = "artplace";

if ($server_url !== 'localhost') {
	$server = 'sql305.epizy.com';
	$user = 'epiz_32746769';
	$pass = 't9VjpQ9h2a';
	$db = 'epiz_32746769_quiz';
}

$conn = mysqli_connect($server, $user, $pass, $db);

function convert_array_to_utf8($array)
{
	array_walk_recursive($array, function (&$item, $key) {
		if (!mb_detect_encoding($item, 'utf-8', true)) {
			$item = utf8_encode($item);
		}
	});

	return $array;
}

function newConn()
{
	global $server_url;
	global $server;
	global $user;
	global $pass;
	global $db;
	return new mysqli($server, $user, $pass, $db);
}
