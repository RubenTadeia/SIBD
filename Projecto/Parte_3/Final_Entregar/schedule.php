<?php session_start(); ?>
<html>
   <head>
      <title>A marcar</title>
   </head>
   <body background="images/leaf.jpeg">
      <center>
      <?php
			
		$_SESSION['sch_date'] = $_REQUEST['schedule_date'];
         
         if ($_SESSION['sch_date'] <= date("Y-m-d")) {
         	?>
         		<form action="begin.php" method="post">
				<p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
				<p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
				<fieldset style="border: 2px solid rgb(50,255,20);">
					<legend style="color:#FFFFFF"><strong>ERRO!</strong></legend>
					<br>
					<h3 style="color:#FFFFFF"><strong>A data que inseriste tem que ser posterior ao dia de hoje! </strong></h3>
					<p><input type="submit" value="Regressar" style="font-weight:bold;"/></p>
				</form>
         	<?php
         }
         else if ( date(N,strtotime($_SESSION['sch_date'])) >= 6 ){
         	?>
				<form action="begin.php" method="post">
				<p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
				<p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
				<fieldset style="border: 2px solid rgb(50,255,20);">
					<legend style="color:#FFFFFF"><strong>ERRO!</strong></legend>
					<br>
					<h3 style="color:#FFFFFF"><strong>Os servi&ccedil;os est&atilde;o encerrados ao fim de semana! </strong></h3>
					<p><input type="submit" value="Regressar" style="font-weight:bold;"/></p>
				</form>
         	<?php
         }
         else {
         	
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
			
         	$doc = $_REQUEST['doc_name'];
         	$get_doc_id = "select doctor_id from doctor where name = '$doc'";
		
         	$doctor_id_list = $connection->query($get_doc_id);
			
			foreach($doctor_id_list as $row){ $_SESSION['doctor_id']=$row['doctor_id'];} 
         	
         	$office_q = "select office from appointment where doctor_id = '$_SESSION[doctor_id]' and date = '$_SESSION[sch_date]'";
			
			$check_office = $connection->query($office_q);
			$nrows = $check_office->rowCount();
			
			?>
			<fieldset style="border: 2px solid rgb(10,10,255);">
            <legend style="color:#FFFFFF"><strong>A Marcar</strong></legend>
			<form action="final.php" method="post">
			<?php
			
			if($nrows >= 1){
				foreach($check_office as $row){ $_SESSION['office']=$row['office'];}
				echo("A consulta terá lugar no gabinete:" . $_SESSION[office]);
				
			}else {
				
				$office_busy_q = "select office from appointment where date = '$_SESSION[sch_date]'";
				
				$check_office_busy = $connection->query($office_busy_q);
				
				foreach($check_office_busy as $row){
					$check_aux[] = $row['office'];
				}
				
				$office_list = array("Sala 1", "Sala 2", "Sala 3", "Sala 4", "Sala 5", "Sala 6", "Sala 7", "Sala 8", "Sala 9", "Sala 10");
				
				$office_result = array_diff($office_list,$check_aux);
				
				?><p><strong>Escolha um gabinete: </strong></p>
				<select name="selected_office"><?php
				
				if (count($office_result) >0){
					for($i=0; $i<=count($office_result);$i++){
						if ($office_result[$i] != ""){
							?><option value="<?php echo($office_result[$i]);?>" ><?php echo($office_result[$i]);?></option><?php
						}					
					}
				}else{
					for($i=0; $i<=count($office_list);$i++){
						if ($office_list[$i] != ""){
							?><option value="<?php echo($office_list[$i]);?>" ><?php echo($office_list[$i]);?></option><?php
						}					
					}
				}
							
				
				?>
				</select><?php
			}
			?>
				<p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
         		<p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
         		<p><input type="submit" value="Submit"/></p>
			</form><?php
         }
		 $connection = null;
         ?>
         </center>
   </body>
</html>