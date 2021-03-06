<?php
    use App\myClasses\dbConnection;
    use App\myClasses\logData;
    use App\myClasses\Type;
    date_default_timezone_set("America/Mexico_City");
    $today = date("Y-m-d") . " 00:00:00";
    if(Type::isPatient()):
        $citas = dbConnection::RAW("SELECT DATE_FORMAT(fecha_hora,'%d/%m/%Y') AS fecha, TIME(fecha_hora) AS hora, usuarios.nombre, usuarios.apellidoPaterno, usuarios.apellidoMaterno FROM citas
            INNER JOIN usuarios ON usuarios.id_usuario = citas.id_medico
            WHERE citas.id_paciente = '".logData::getData('id_usuario')."' AND citas.fecha_hora > NOW()");
    elseif(Type::isInCharge()):
        $id_Usuario = dbConnection::select(['id_paciente'], 'encargados', [['id_usuario', logData::getData("id_usuario")]])[0]['id_paciente'];
        $citas = dbConnection::RAW("SELECT DATE_FORMAT(fecha_hora,'%d/%m/%Y') AS fecha, TIME(fecha_hora) AS hora, usuarios.nombre, usuarios.apellidoPaterno, usuarios.apellidoMaterno FROM citas
            INNER JOIN usuarios ON usuarios.id_usuario = citas.id_medico
            WHERE citas.id_paciente = '".$id_Usuario."' AND citas.fecha_hora > NOW()");
    endif;
?>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Paciente</title>

      <!-- Bootstrap Core CSS -->
    <link href="../../dataSource/css/templates/bootstrap.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../../dataSource/css/templates/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../dataSource/css/templates/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../../dataSource/css/templates/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- DataTables CSS -->
    <link href="../../dataSource/css/templates/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../../dataSource/css/templates/dataTables.responsive.css" rel="stylesheet">
    <link rel='shortcut icon' href='../dataSource/img/favicon.png' type='image/x-icon'/>
    <!-- FontsAwsome CSS -->
    <link href="../../dataSource/css/templates/font-awesome.css" rel="stylesheet">
    <link rel='shortcut icon' href='../dataSource/img/favicon.png' type='image/x-icon'/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/..">
                <IMG SRC="/dataSource/img/HealthCare.png" WIDTH=120 HEIGHT=37 ALT="HealthCare">  
                </a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> Usuario <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="../dashboard/userProfile"><i class="fa fa-user fa-fw"></i> Perfil de usuario</a>
                        </li>
                        <li><a href="/logOut"><i class="fa fa-gear fa-fw"></i> Cerrar Sesión</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="/dashboard"><i class="fa fa-dashboard fa-fw"></i> Inicio</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table fa-fw"></i>Mis citas</a>
                        </li>
                        <li>
                            <a href="../dashboard/doctors"><i class="fa fa-user-md fa-fw"></i> Mis médicos</a>
                        </li>
                        <li>
                            <a href="../dashboard/medicines"><i class="fa fa-medkit fa-fw"></i> Mis medicinas</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
       <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    
                    <h1 class="page-header">Todas mis citas proximas</h1>                
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Doctor</th>
                                        <th>Fecha</th>
                                        <th>Hora</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach($citas as $cita): ?>
                                        <tr class="odd gradeX">
                                            <td><?php echo $cita['nombre'] . " " . $cita['apellidoPaterno'] . " " . $cita['apellidoMaterno']; ?></td>                                        
                                            <td><?php echo $cita['fecha']; ?></td>
                                            <td class="center"><?php echo date("H:i",strtotime($cita['hora'])); ?></td>
                                        </tr>                                    
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->


    <!-- jQuery -->
    <script src="../../dataSource/js/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../../dataSource/js/templates/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../../dataSource/js/templates/metisMenu.min.js"></script>

     
    <!-- DataTables JavaScript -->
    <script src="../../dataSource/js/jquery/jquery.dataTables.js"></script>
    <script src="../../dataSource/js/templates/dataTables.bootstrap.min.js"></script>
    <script src="../../dataSource/js/templates/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../../dataSource/js/templates/sb-admin-2.js"></script>
           
    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true,
            "order": [[ 1, "asc" ]]
        });
    });
    </script>
    </body>

</html>
