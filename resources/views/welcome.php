<?php
    use App\myClasses\logData;
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>HealthCare</title>

    <!-- Bootstrap Core CSS -->
    <link href="dataSource/css/templates/bootstrap.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="dataSource/css/templates/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>


    <!-- Plugin CSS -->
    <link href="dataSource/css/templates/magnific-popup.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="dataSource/css/templates/creative.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <!-- extra Fonts -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Candal|Alegreya+Sans">

    <link rel='shortcut icon' href='/dataSource/img/favicon.png' type='image/x-icon'/>
    
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Extra style-->
    <style>
        .form-group input[type="checkbox"] {
            display: none;
        }

        .form-group input[type="checkbox"] + .btn-group > label span {
            width: 20px;
        }

        .form-group input[type="checkbox"] + .btn-group > label span:first-child {
            display: none;
        }
        .form-group input[type="checkbox"] + .btn-group > label span:last-child {
            display: inline-block;   
        }

        .form-group input[type="checkbox"]:checked + .btn-group > label span:first-child {
            display: inline-block;
        }
        .form-group input[type="checkbox"]:checked + .btn-group > label span:last-child {
            display: none;   
        }
    </style>
</head>

<body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <?php if(logData::retrieveSession()): ?>
                <a class="navbar-brand page-scroll" href="/dashboard">Acceder</a>
                <?php else: ?>
                <a class="navbar-brand page-scroll" href="#" data-target="#login" data-toggle="modal">Inicio de sesión</a>
                <?php endif; ?>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="#about">Acerca de...</a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="#services">Servicios</a>
                    </li>
                    <!--
                    <li>
                        <a class="page-scroll" href="#portfolio">Portafolio</a>
                    </li>-->
                    <li>
                        <a class="page-scroll" href="#contact">Contacto</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <header>
        <div class="header-content">
            <div class="header-content-inner">
                <IMG SRC="dataSource/img/HealthCare.png" WIDTH=240 HEIGHT=240 ALT="HealthCare">                
                <h1 id="homeHeading">SISAL: Sistema de integración para la salud.</h1>
                <br>

                <p>Esta página web está destinada a una clínica, para que los procesos clínicos sean más automáticos, y se actualicen los procesos.</p>
                <a href="#about" class="btn btn-primary btn-xl page-scroll">Conoce más de la clínica.</a>
            </div>
        </div>
    </header>

    <section class="bg-primary" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <IMG SRC="dataSource/img/CSALogo.png" WIDTH=240 HEIGHT=240 ALT="HealthCare">
                    <h2 class="section-heading">Servicio de calidad y calidez.</h2>
                    <hr class="light">
                    <p class="text-faded">A sus órdenes desde hace n años.</p>
                    <a href="#services" class="page-scroll btn btn-default btn-xl sr-button">Conoce nuestros servicios!</a>
                </div>
            </div>
        </div>
    </section>

    <section  id="services">
        <div class="container">

        <div class="row">
			<div class="col-sm-6 col-md-6">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
				<img src="dataSource/img/CSALogo.png" WIDTH=400 HEIGHT=400 />
				</div>
            </div>
			<div class="col-sm-3 col-md-3">
				
				<div class=" " >
                <div class="service-box">
					<div class="service-icon">
						<span class="fa fa-ambulance fa-3x"></span> 
					</div>
					<div class="service-desc">
						<h5 class="h-light">Urgencias</h5>
						<p>Servicio las 24 horas, atención inmediata.</p>
					</div>
                </div>
				</div>
				
				<div class=" " >
				<div class="service-box">
					<div class="service-icon">
						<span class="fa fa-child fa-3x"></span> 
					</div>
					<div class="service-desc">
						<h5 class="h-light">Pediatría</h5>
						<p>Servicio amigable y profesional con menores.</p>
					</div>
                </div>
				</div>
				<div class="" >
				<div class="service-box">
					<div class="service-icon">
						<span class="fa fa-stethoscope fa-3x"></span> 
					</div>
					<div class="service-desc">
						<h5 class="h-light">Adultos</h5>
						<p>Atención especializada con el mejor trato.</p>
					</div>
                </div>
				</div>


            </div>
			<div class="col-sm-3 col-md-3">
				
				<div class="" >
                <div class="service-box">
					<div class="service-icon">
						<span class="fa fa-plus-square fa-3x"></span> 
					</div>
					<div class="service-desc">
						<h5 class="h-light">Cirugía</h5>
						<p>Quirófanos con lo último en tecnología a su servicio.</p>
					</div>
                </div>
				</div>
				
				<div class="" >
				<div class="service-box">
					<div class="service-icon">
						<span class="fa fa-heart-o fa-3x"></span> 
					</div>
					<div class="service-desc">
						<h5 class="h-light">Partos</h5>
						<p>Tenemos lo necesario para atenderte, y te acompañamos en el proceso.</p>
					</div>
                </div>
				</div>
				<div class="" >
				<div class="service-box">
					<div class="service-icon">
						<span class="fa fa-hospital-o fa-3x"></span> 
					</div>
					<div class="service-desc">
						<h5 class="h-light">Medicina Interna</h5>
						<p>Tenemos habitaciones equipadas para hacer tu estancia lo mejor posible.</p>
					</div>
                </div>
				</div>

            </div>
			
        </div>		
		</div>
    </section>


    <div class="modal fade" id="login" role="dialog">
      <div class="modal-dialog modal-sm">
      
        <!-- Modal content no 1-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title text-center form-title">Inicio de sesión</h4>
          </div>
          <div class="modal-body padtrbl">

            <div class="login-box-body">
            <?php if(isset($_GET['error'])):?>
                <?php if($_GET['error']=="signin"): ?>
                    <div id="errorlogIn" class="alert alert-danger">Datos erroneos, verifica</div>
                <?php elseif($_GET['error']=="denied"): ?>
                    <div id="errorlogIn" class="alert alert-danger">Porfavor contacte con el administrador</div>
                <?php endif; ?>
            <?php endif; ?>
              <div class="form-group">
                <form name="logIn" id="loginForm" action="/logIn" method="post">
                  <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">
                 <div class="form-group has-feedback"> <!----- username -------------->
                      <input class="form-control" placeholder="Email o usuario"  id="email" type="text" name="email"/> 
            <span style="display:none;font-weight:bold; position:absolute;color: red;position: absolute;padding:4px;font-size: 11px;background-color:rgba(128, 128, 128, 0.26);z-index: 17;  right: 27px; top: 5px;" id="span_loginid"></span><!---Alredy exists  ! -->
                      <span class="glyphicon glyphicon-user form-control-feedback"></span>
                  </div>
                  <div class="form-group has-feedback"><!----- password -------------->
                      <input class="form-control" placeholder="Contraseña" id="pass" type="password" name="pass"/>
            <span style="display:none;font-weight:bold; position:absolute;color: grey;position: absolute;padding:4px;font-size: 11px;background-color:rgba(128, 128, 128, 0.26);z-index: 17;  right: 27px; top: 5px;" id="span_loginpsw"></span><!---Alredy exists  ! -->
                      <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                  </div>
                    <div class="row">
                      <div class="col-xs-12">
                          <button type="submit" class="btn btn-green btn-block btn-flat" style="margin-top:10px;">Sign In</button>
                      </div>
                    <div>
                </form>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
    <!--/ Modal box-->

    <!-- jQuery -->
    <script src="dataSource/js/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="dataSource/js/templates/bootstrap.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="dataSource/js/templates/scrollreveal.js"></script>
    <script src="dataSource/js/jquery/jquery.magnific-popup.js"></script>
    
    <!-- Theme JavaScript -->
    <script src="dataSource/js/templates/creative.js"></script>
    <?php if(isset($_GET['error'])):?>
        <script>$('#login').modal('show')  </script>
    <?php endif; ?>
</body>

</html>
