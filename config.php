<?php
session_start();
date_default_timezone_set("Asia/Kolkata");
/* CHANGE VARIABLES AS PER REQUIREMNET */
$conn=new mysqli("localhost","root","","ecom");

$mail_email=""; // email address
$mail_pass=""; // password
$mail_sender="KM BITTU PANDEY"; // Company Name

?>