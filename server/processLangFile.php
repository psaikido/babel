<?php
require('connect.inc.php');
require('babel.cls.php');

if ($_FILES['datafile']['type'] != 'text/csv'){
	echo 'csv only please';
	exit;
} else {
    $babel = new babel();
    $data = file($_FILES['datafile']['tmp_name']);
    $babel->processLangFile($data);
}

