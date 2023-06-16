<?php
require('../../../libs/plugins/fpdf/fpdf.php');
include_once('../../../config/database.php');
include_once('../../data/model/Sql.php');

$Sql = new Sql($conn);

class PDF extends FPDF
{
    // Page header
    function Header()
    {
        // Logo image
        $this->Image('../../libs/images/santarosa-logo.png', 10, 10, 30);
        
        // Company information
        $this->SetFont('Arial','B',12);
        $this->Cell(40);
        $this->Cell(0,10,'City Social Welfare Development',0,1);
        $this->SetFont('Arial','',10);
        $this->Cell(40);
        $this->Cell(0,5,'City of Santa Rosa Laguna',0,1);
        $this->Cell(40);
        $this->Cell(0,5,'8477+RH, Barangay Market Area',0,1);
        $this->Cell(40);
        $this->Cell(0,5,'Sta. Rosa City, Laguna 4024',0,1);
        
        // Line break
        $this->Ln(10);
        $this->Line(10, 40, 200, 40);
    }
    // Page footer
    function Footer()
    {
        // Position at 1.5 cm from bottom
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial','I',8);
        // Page number
        $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
    }
}

$barangay = $_GET['barangay'];
$applicantType = $_GET['applicantType'];
$applicationType = "New Application";
$status = "Approved";

$result = $Sql->getApplicants($applicationType, $applicantType, $barangay, $status);

// Instanciation of inherited class
$pdf = new PDF('P', 'mm', "Legal");
$pdf->AliasNbPages();
$pdf->AddPage();

// Set font
$pdf->SetFont('Arial','B',12);
// Row 1
$pdf->Cell(0,6,$applicantType.' list from '.$barangay,0,1,'C');

// Line break
$pdf->Ln(1);

// Set font
$pdf->SetFont('Arial','B',7);

$pdf->Cell(13,10,'No.',1,0,'C');
$pdf->Cell(60,10,'Name',1,0,'C');
$pdf->Cell(60,10,'Barangay',1,0,'C');
$pdf->Cell(57,10,'Birthday',1,1,'C');

// for($i = 1; $i <= 27; $i++)
// {
//     $text = '$itemDesc';
//     $height = $pdf->GetMultiCellHeight(70, 7, $text);

//     $pdf->Cell(13,$height,$i,1,0,'C');
//     $pdf->Cell(50,$height,'Romeo Jr Bardillon',1,0,'C');
//     $pdf->Cell(80,$height,'Block 7 Lot 2 Oak Street Rose Pointe Subdivision',1,0,'C');
//     $pdf->Cell(20,$height,'Tagapo',1,0,'C');
//     $pdf->Cell(27,$height,'July 30, 2001',1,1,'C');
// }

foreach ($result as $key => $value) {
    $text = $value['FULL_NAME'];
    $height = $pdf->GetMultiCellHeight(70, 7, $text);

    $pdf->Cell(13,$height,$key + 1,1,0,'C');
    $pdf->Cell(60,$height,$value['FULL_NAME'],1,0,'C');
    $pdf->Cell(60,$height,$value['BARANGAY'],1,0,'C');
    $pdf->Cell(57,$height,$value['FORMATTED_DATE'],1,1,'C');
}

// Line break
$pdf->Ln(5);
// echo($pdf->GetY());
if($pdf->GetY() > 258.00125)
{
    $pdf->AddPage();
}
// First column
$pdf->SetXY(10, $pdf->GetY());
$pdf->Cell(70, 5, 'PREPARED BY:', 0, 1);
$pdf->Cell(50, 5, strtoupper($_SESSION['user']['FULL_NAME']), 0, 1, 'C');
$pdf->Line($pdf->GetX(), $pdf->GetY(), $pdf->GetX() + 50, $pdf->GetY());
$pdf->Cell(70, 5, 'Signature over Printed Name', 0, 1);
$pdf->Cell(8, 5, 'DATE:', 0, 0);
// Set Font
$pdf->SetFont('Arial','U',7);
$pdf->Cell(62, 5, date("F j, Y"), 0, 1);
$pdf->Ln(5);

// Set font
$pdf->SetFont('Arial','B',7);

$pdf->Cell(70, 5, 'RECEIVED BY:', 0, 1);
$pdf->Cell(50, 5, "", 0, 1, 'C');
$pdf->Line($pdf->GetX(), $pdf->GetY(), $pdf->GetX() + 50, $pdf->GetY());
$pdf->Cell(70, 5, 'Signature over Printed Name', 0, 1);
$pdf->Cell(8, 5, 'DATE:', 0, 0);
// Set Font
$pdf->SetFont('Arial','U',7);
$pdf->Cell(62, 5, "", 0, 1);
$pdf->Ln(5);

$pdf->Output();
?>