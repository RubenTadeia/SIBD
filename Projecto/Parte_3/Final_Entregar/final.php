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
		 
		 
		 
		 $office = $_REQUEST['selected_office'];
		 
		 
		 $ins_appoint_q = "insert into appointment values ('$_SESSION[patient_id]', '$_SESSION[doctor_id]', '$_SESSION[sch_date]', '$office')";
		 echo("DEBUG" . $ins_appoint_q);
		 $ins_appoint = $connection->exec($ins_appoint_q);
		 
		 
		 
		 $connection = null;
		 
		 ?>
		 
		 <form action="Task1.php" method="post">
				<fieldset style="border: 2px solid rgb(50,255,20);">
					<legend><strong>Confirmado!</strong></legend>
					<br>
					<h3>A sua marca&ccedil;&atilde;o foi executada com Sucesso</h3>
					<p><input type="submit" value="Regressar" style="font-weight:bold;"/></p>
			</form>
	 </body>
 </html>