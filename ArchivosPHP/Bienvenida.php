<?php
session_start();

echo "Bienvenido, " . htmlspecialchars($_SESSION['user']) . "!";
?>
