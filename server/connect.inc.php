<?php
$dbHost = 		'localhost';
$dbUser = 		'buddham_13';
$dbPassword =   'slntllmn8ugh13H';
$dbName = 		'hughresell_babel';

$mysqli = @ new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if (mysqli_connect_errno()) {
	printf("Can't connect to MySQL Server. Errorcode: %s\n", mysqli_connect_error());
	exit;
}

