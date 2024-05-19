<?php

class Conexion
{
    public function Conectar()
    {
        define('HOST', '127.0.0.1');
        define('PORT', 1521);
        define('NAME', 'XE');
        define('USER', 'SYSTEM');
        define('PASS', '1007314588');

        $bd_setting = "
    (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = " . HOST . ")(PORT = " . PORT . "))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = " . NAME . ")
    )
  )
    ";

        try {

            $bd = new PDO('oci:dbname=' . $bd_setting, USER, PASS);
            $bd->setAttribute(PDO::ATTR_CASE, PDO::CASE_LOWER);
            $bd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            echo  'CONEXION EXITOSA';
            return $bd;
        } catch (Exception $e) {

            echo  'ERROR DE CONEXION: ' . $e->getMessage();
        }
    }
}