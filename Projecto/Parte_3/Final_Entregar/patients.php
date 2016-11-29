<html>
	<head>
		<title>Do we know him already?</title>
	</head>
	<body>
		<center>
			<?php
				$host = "db.tecnico.ulisboa.pt";
				$user = "ist175268";
				$pass = "ouup7210";
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
				$patient_name = $_REQUEST['patient_name'];
				$nome = "select name, birthday, address from patient having name like '$patient_name%'";
				
				$result = $connection->query($nome);
				
				$nrows = $result->rowCount();?>
			<form action="appointment.php" method="post">
				<?php
					if($nrows>=1){
						echo("<table border=\"1\" cellspacing=\"5\">\n");
						echo("<tr><td>Escolher</td><td>Name</td><td>Birthday</td><td>Address</td></tr>");
							foreach($result as $row)
							{
								echo("<tr><td>");
								?><input type="radio" name="patient_id" value="<?php echo($row['patient_id']); ?>" checked><?php 
					echo("</td><td>");
					echo($row['name']);
					echo("</td><td>");
					echo($row['birthday']);
					echo("</td><td>");
					echo($row['address']);
					echo("</td></tr>");?> <br><?php
					}
					echo("</table>"); 
					
					?>
				<br><br>
				<img src="images/yes.gif" alt="yes" style="width:480px;height:268px;">
				<br><br> 
				<input type="submit" value="Agendar">
				<br><br>
				<?php
					} 
					else 
					{
					?> 
				<h3><br>Paciente n&atildeo consta na Base de Dados!<br><br><br>Por favor registe este novo paciente!<br><br></h3>
				<img src="images/ohNo.gif" alt="ohNo" style="width:480px;height:268px;"><br><br>
				<?php
					}
					?>
			</form>
			<form action="whoIs.php" method="post">
				<input type="submit" value="Voltar Atr&aacutes">
			</form>
			<?php
				$connection = null;
				?>
			</form>
		</center>
	</body>
</html>