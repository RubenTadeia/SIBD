<?php session_start(); ?>
<html>
   <head>
      <title>Finalizar</title>
   </head>
   <body background="images/success.jpeg">
    <center>
      <?php
         $host = "db.tecnico.ulisboa.pt";
                $user = $_REQUEST['istid'];
                $pass = $_REQUEST['pass'];
                $dsn = "mysql:host=$host;dbname=$user";
                
                try
                {
                  $connection = new PDO($dsn, $user, $pass);
                }
                catch(PDOException $exception)
                {
                  echo("<p>Error: ");
                  echo($exception->getMessage());
                  echo("</p>");
                  exit();
                }
          
          
          
          $office = $_REQUEST['selected_office'];
          
          
          $ins_appoint_q = "insert into appointment values ('$_SESSION[patient_id]', '$_SESSION[doctor_id]', '$_SESSION[sch_date]', '$office')";
          echo("DEBUG" . $ins_appoint_q);
          $ins_appoint = $connection->exec($ins_appoint_q);
          
          
          
          $connection = null;
          
          ?>
      <form action="begin.php" method="post">
         <p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
         <p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
         <fieldset style="border: 2px solid rgb(50,255,20);">
         <legend style="color:#FFFFFF"><strong>Confirmado!</strong></legend>
         <br>
         <h3 style="color:#FFFFFF"><strong>A sua marca&ccedil;&atilde;o foi executada com Sucesso</strong></h3>
         <p><input type="submit" value="Regressar" style="font-weight:bold;"/></p>
      </form>
      </center>
   </body>
</html>