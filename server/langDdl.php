<?php
require('connect.inc.php');
require('babel.cls.php');

$babel = new babel();
echo $babel->langDdl();

?>
