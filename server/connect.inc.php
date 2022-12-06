<?php
$dbHost = 		'[host]';
$dbUser = 		'[user]';
$dbPassword =   '[pwd]';
$dbName = 		'[dbname]';

$mysqli = @ new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if (mysqli_connect_errno()) {
	printf("Can't connect to MySQL Server. Errorcode: %s\n", mysqli_connect_error());
	exit;
}

