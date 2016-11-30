<?php session_start(); ?>
<html>
   <body>
      <?php 
         $host = "db.tecnico.ulisboa.pt";
         $user = "ist179297";
         $pass = "wnws3405";
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
      <form action="schedule.php" method="post">
         <h3>Agendar consulta</h3>
         <p>Escolha um medico:
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
         <p>Escolha a data da consulta:<input type="date" name="schedule_date"/></p>
		 
         <p><input type="submit" value="Submit"/></p>
      </form>
      <?php
         $connection = null;
         ?>
   </body>
</html>