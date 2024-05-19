<?php
session_start();
require_once('Conexion.php');

$connetion = new Conexion();
$getConnetion = $connetion->Conectar();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $user = isset($_POST['user']) ? $_POST['user'] : '';
    $pass = isset($_POST['pass']) ? $_POST['pass'] : '';

    try {
        $sql = "SELECT * FROM usuarios WHERE NOMBRE = :email AND PASS = :password";
        $stmt = $getConnetion->prepare($sql);
        $stmt->bindParam(':email', $user);
        $stmt->bindParam(':password', $pass);
        $stmt->execute();
        
        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($result) {
            $_SESSION['user'] = $result['NOMBRE'];
            header('Location: Bienvenida.php');
            exit();
        } else {
            echo "Usuario o contraseña incorrectos.";
        }
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
} else {
    echo "Método de solicitud no permitido.";
}
?>
