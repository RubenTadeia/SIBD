<?php session_start(); ?>
<html>
   <head>
      <title>Agendar Consulta</title>
   </head>
   <body background="images/leaf.jpeg">
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

            $_SESSION['patient_id'] = $_REQUEST['patient_id'];
            $doc_list = "select name from doctor";
            $search_doc = $connection->query($doc_list);
            ?>
         <br>
         <fieldset style="border: 2px solid rgb(10,10,255);">
            <legend style="color:#FFFFFF"><strong>Consultas</strong></legend>
            <form action="schedule.php" method="post">
               <p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
               <p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
               <h3 style="color:#FFFFFF"><strong>Agendar consulta</strong></h3>
               <p style="color:#FFFFFF">
                  Escolha um medico:
                  <select name="doc_name">
                     <?php
                        foreach($search_doc as $row)
                        {
                           ?>
                     <option value="<?php echo($row['name']);?>"><?php echo($row['name']);?></option>
                     <?php
                        }?>
                  </select>
               </p>
               <p style="color:#FFFFFF">Escolha a data da consulta: <input type="date" name="schedule_date"/></p>
               <p><input type="submit" value="Confirmar"/></p>
            </form>
            <?php
               $connection = null;
               ?>
         </fieldset>
      </center>
   </body>
</html>