<?php session_start(); ?>
<html>
   <body>
      <?php
			
		$_SESSION['sch_date'] = $_REQUEST['schedule_date'];
         
         if ($_SESSION['sch_date'] <= date("Y-m-d")) {
         	echo("<h3>The date you are trying to schedule is earlier than the current date!<br>Please insert a valid date!</h3>");
         	?><button onclick="history.go(-1);">Back </button><?php
         }
         else if ( date(N,strtotime($_SESSION['sch_date'])) >= 6 ){
         	echo("<h3>The services are closed on Weekends.<br>Please choose another date!</h3>");
         	?><button onclick="history.go(-1);">Back </button><?php
         }
         else {
         	
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
			
         	
         	$doc = $_REQUEST['doc_name'];
         	$get_doc_id = "select doctor_id from doctor where name = '$doc'";
		
         	$doctor_id_list = $connection->query($get_doc_id);
			
			foreach($doctor_id_list as $row){ $_SESSION['doctor_id']=$row['doctor_id'];} 
         	
         	$office_q = "select office from appointment where doctor_id = '$_SESSION[doctor_id]' and date = '$_SESSION[sch_date]'";
			
			$check_office = $connection->query($office_q);
			$nrows = $check_office->rowCount();
			
			?><form action="final.php" method="post"><?php
			
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
				
				?><p>Escolha um gabinete:</p>
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
			?><p><input type="submit" value="Submit"/></p>
			</form><?php
         }
		 $connection = null;
         ?>
   </body>
</html>