<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$host = "sql113.infinityfree.com";
$dbname = "if0_37745254_gestionlaboratorios";
$user = "if0_37745254";
$password = "7vWNKOvk48K";

$conn = new mysqli($host, $user, $password, $dbname);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
} else {
    echo "Conexión exitosa a la base de datos.";
}
?>