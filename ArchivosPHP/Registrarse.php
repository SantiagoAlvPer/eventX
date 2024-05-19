          <?php
          require_once('../ArchivosPHP/Conexion.php');

          $connetion = new Conexion();
          $getConnetion = $connetion->Conectar();

          if (isset($_POST['success'])) {

            $name = $_POST['name'];
            $apellido = $_POST['apellido'];
            $fecha_nacimiento = $_POST['born'];
            $email = $_POST['email'];
            $tel = $_POST['tel'];
            $pass = $_POST['pass'];
            $tipo = $_POST['tipo'];

            if($tipo==1){
              $tipo="Cliente";
            }else{
              $tipo="Empresario";
            }

            echo "
             <br>$name
             <br> $apellido
             <br> $fecha_nacimiento
             <br> $email
             <br> $tel
             <br> $pass
             <br> $tipo
           ";

            try {
              $sql = "INSERT INTO usuarios (NOMBRE, APELLIDOS, FECHA_NACIMIENTO, EMAIL, TELEFONO, PASS, TIPO) 
            VALUES (:name, :apellido, TO_DATE(:fecha_nacimiento, 'YYYY-MM-DD'), :email, :tel, :pass, :tipo)";
              $stmt = $getConnetion->prepare($sql);
              $stmt->bindParam(':name', $name);
              $stmt->bindParam(':apellido', $apellido);
              $stmt->bindParam(':fecha_nacimiento', $fecha_nacimiento);
              $stmt->bindParam(':email', $email);
              $stmt->bindParam(':tel', $tel);
              $stmt->bindParam(':pass', $pass);
              $stmt->bindParam(':tipo', $tipo);
              $stmt->execute();
              header('Location: acceso.php');
              exit();
            } catch (PDOException $e) {
              echo "Error: " . $e->getMessage();
            }
          }
          ?>

          
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>ProyectoX - Inicio de sesion</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="..//ArchivosCSS/registro.css" type="text/css">
</head>

<body>


  <nav class="navbar navbar-expand-lg navbar-dark bg-black">
    <div class="container ml-2">
      <a class="navbar-brand" href="#"><img src="..//Imagenes/EVENTX1.png" alt="" height="45"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="..//ArchivosHTML/prueba.html">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#about">Acerca de</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#services">Servicios</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contact">Contacto</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container-fluid">
    <div class="row">
      <div class="col-ms-12">
        <section>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>

        </section>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12 problema">


        <div class="form ml-2">

          <p class="title">Registro </p>

          <p class="message">Registrate para tener acceso completo. </p>

          <div class="personas" id="campos_personas">

            <form class="formulario" action="" method="POST">

              <div class="flex">
                <label>
                  <input class="input" type="text" placeholder="" required="" id="name" name="name">
                  <span>Nombres</span>
                </label>

                <label>
                  <input class="input" type="text" placeholder="" required="" id="apellido" name="apellido">
                  <span>Apellidos</span>
                </label>
              </div>

              <label>
                <input class="input" type="date" placeholder="" required="" id="born" name="born">
                <span>Fecha de nacimiento</span>
              </label>

              <div class="flex">
                <label>
                  <input class="input" type="email" placeholder="" required="" id="email" name="email">
                  <span>Email</span>
                </label>

                <label>
                  <input class="input" type="text" placeholder="" required="" id="tel" name="tel">
                  <span>Telefono</span>
                </label>
              </div>

              <label>

              <select class="input" name="tipo" id="tipo" required="">
                <option value="1">Cliente</option>
                <option value="2">Empresario</option>
              </select>
                <span>Tipo usuario</span>

                <!-- <div class="body">
                  <div class="tabs">
                    <input checked value="Personas" name="fav_language" id="html" type="radio" class="input" onchange="mostrarCampos(this)" />
                    <label for="html" class="label">Personas</label>
                    <input value="Empresas" name="fav_language" id="css" type="radio" class="input" onchange="mostrarCampos(this)" />
                    <label for="css" class="label">Empresas</label>


                  </div>
                </div> -->
              </label>

              <label>
                <input class="input" type="password" placeholder="" required="" id="pass" name="pass">
                <span>Crea una contraseña</span>
              </label>

              <button class="submit" type="submit" name="success">Registrarse</button>
              <p class="signin">Ya tienes una cuenta ? <a href="#">Iniciar sesion</a> </p>

            </form>

          </div>

          <!-- <div class="empresas" id="campos_empresa" style="display:none;">

            <form class="formulario" action="" method="POST">

              <div class="flex">
                <label>
                  <input class="input" type="text" placeholder="" required="" id="nameP" name="nameP">
                  <span>Nombre de la Empresa</span>
                </label>
                <label>
                  <input class="input" type="text" placeholder="" required="" id="nit" name="nit">
                  <span>NIT</span>
                </label>
              </div>

              <label>
                <input class="input" type="text" placeholder="" required="" id="dir" name="dir">
                <span>Direccion</span>
              </label>

              <div class="informacion_contacto">
                <label>
                  <span>informacion de contacto:</span>
                </label>

                <label>
                  <input class="input" type="tel" placeholder="" required="" id="telP" name="telP">
                  <span>Telefono</span>
                </label>

                <label>
                  <input class="input" type="text" placeholder="" required="" id="email" name="email">
                  <span>Email</span>
                </label>

                <label>
                  <input class="input" type="text" placeholder="" required="" id="web" name="web">
                  <span>pagina web</span>
                </label>
              </div>


              <button class="submit" type="submit" name="success2">Registrarse</button>
              <p class="signin">Ya tienes una cuenta ? <a href="#">Iniciar sesion</a> </p>

            </form>

          </div> -->


          <!-- codigo php para la insercion -->


        </div>


      </div>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- <script src="..//ArchivosJS/Validacion_resgistro.js"></script> -->



</body>

</html>