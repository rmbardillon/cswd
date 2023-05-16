<?php
// Retrieve form data
$name = $_POST['name'];
$country = $_POST['country'];
$subscribe = isset($_POST['subscribe']) ? $_POST['subscribe'] : 0;
$message = $_POST['message'];

echo("Name: $name \n");
echo("Country: $country \n");
echo("Subscribe: $subscribe \n");
echo("Message: $message \n");
?>
