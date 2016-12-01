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
             
               $stmt = $connection->prepare("INSERT INTO appointment(patient_id,doctor_id,date,office) VALUES(:patient_id,:doctor_id,:date,:office)");
               $stmt->execute(array(':patient_id' => $_SESSION[patient_id] , ':doctor_id' => $_SESSION[doctor_id], ':date' => $_SESSION[sch_date], ':office' => $office));
             
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