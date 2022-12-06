<?php
require('babel.cls.php');

$babel = new babel();
$lang = $mysqli->real_escape_string($_REQUEST['lang']);
echo $babel->translator($lang);

