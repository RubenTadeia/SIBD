<html>
	<head>
		<title>A marcar Meeting</title>
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
				
				$doc = $_REQUEST['doc_name'];
				$get_doc_id = "select doctor_id from doctor where name = '$doc'";
				
				$schedule_date = $_REQUEST['schedule_date'];
				$doctor_id_list = $connection->query($get_doc_id);
				
				foreach($doctor_id_list as $row){ $doctor_id_list = $row['doctor_id'];} 
				
				$office_q = "select office from appointment where doctor_id = '$doctor_id_list' and date = '$schedule_date'";
				
				$check_office = $connection->query($office_q);
				$nrows = $check_office->rowCount();
				
				?>
			<fieldset style="border: 2px solid rgb(10,10,255);">
				<legend style="color:#FFFFFF"><strong>A Marcar</strong></legend>
				<form action="end.php" method="post">
					<?php
						if($nrows >= 1){
						    foreach($check_office as $row){ $check_office = $row['office'];}
						    echo("A consulta terá lugar no gabinete:" . $check_office);
						    
						}else {
						    
						    $office_busy_q = "select office from appointment where date = '$schedule_date'";
						    
						    $check_office_busy = $connection->query($office_busy_q);
						    
						    foreach($check_office_busy as $row){
						        $check_aux[] = $row['office'];
						    }
						    
						    $office_list = array("Sala 1", "Sala 2", "Sala 3", "Sala 4", "Sala 5", "Sala 6", "Sala 7", "Sala 8", "Sala 9", "Sala 10");
						    
						    $office_result = array_diff($office_list,$check_aux);
						    
						    ?>
					<p><strong>Escolha um gabinete: </strong></p>
					<select name="selected_office">
						<?php
							if (count($office_result) >0){
							    for($i=0; $i<=count($office_result);$i++){
							        if ($office_result[$i] != ""){
							            ?>
						<option value="<?php echo($office_result[$i]);?>" ><?php echo($office_result[$i]);?></option>
						<?php
							}                   
							}
							}else{
							for($i=0; $i<=count($office_list);$i++){
							if ($office_list[$i] != ""){
							    ?>
						<option value="<?php echo($office_list[$i]);?>" ><?php echo($office_list[$i]);?></option>
						<?php
							}                   
							}
							}
							    
							
							?>
					</select>
					<?php
						}
						?>
					<p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
					<p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
					<p><input type="hidden" name="pName" value="<?=$_REQUEST['pName']?>"/></p>
					<p><input type="hidden" name="pBirthday" value="<?=$_REQUEST['pBirthday']?>"/></p>
					<p><input type="hidden" name="pAddress" value="<?=$_REQUEST['pAddress']?>"/></p>
					<p><input type="submit" value="Submit"/></p>
				</form>
				<?php
					}
					$connection = null;
					?>
			</fieldset>
		</center>
	</body>
</html>