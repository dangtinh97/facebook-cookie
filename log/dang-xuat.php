<?php
session_start();
session_destroy();
include("../config.php");
header("Location:  $domain_url");
exit();
?>