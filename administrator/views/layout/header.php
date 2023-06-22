<?php 
    session_start(); 
    if(!$_SESSION['user']) {
        header("Location: index.php"); 
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>CSWD SANTA ROSA</title>
    <link rel="icon" type="image/png" sizes="500x500" href="../../libs/images/santarosa-logo.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.print.min.css" media="print">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;display=swap">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="../../../libs/plugins/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../../../libs/plugins/bootstrap/bootstrap-icons.css">
    <link rel="stylesheet" href="../../../libs/plugins/datatables/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="../../libs/css/styles.css">
    <link rel="stylesheet" href="../../../libs/css/styles.css">
</head>