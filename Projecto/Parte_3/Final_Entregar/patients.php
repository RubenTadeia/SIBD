<html>
	<head>
		<title>J&aacute; conhecemos este paciente?</title>
	</head>
	<body background="images/background3.jpeg">
		<!-- Referências Bibliográficas: Link: https://images.duckduckgo.com/iu/?u=http%3A%2F%2Ffindwallpapershd.com%2Fwp-content%2Fuploads%2F2013%2F10%2F3D-medical-logo-hd-pictures.jpg&f=1-->
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
				$patient_name = $_REQUEST['patient_name'];
				$nome = "select name, birthday, address, patient_id from patient having name like '%$patient_name%'";
				
				$result = $connection->query($nome);
				
				$nrows = $result->rowCount();?>
			<form action="appointment.php" method="post">
				<p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
				<p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
				<?php
					if($nrows>=1){
						echo("<table border=\"1\" cellspacing=\"5\" bgcolor=\"#00FFFF\">\n");
						echo("<tr align=\"center\" bgcolor=\"#0000FF\"><td>Escolher</td><td>Name</td><td>Birthday</td><td>Address</td></tr>");
							foreach($result as $row)
							{
								echo("<tr align=\"center\"><td>");
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
				<input type="submit" value="Agendar uma Consulta" style="font-weight:bold;">
				<?php
					} 
					else 
					{
						?> 
				<h3><br>Paciente n&atilde;o consta na Base de Dados!<br><br><br>Por favor registe este novo paciente!<br></h3>
				<?php
					}
					?>
			</form>
			<br>
			<form action="new_patient.php" method="post">
				<p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
				<p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
				<input type="submit" value="Criar Novo Registo" style="font-weight:bold;">
				<br><br>
			</form>
			<form action="begin.php" method="post">
				<p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
				<p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
				<input type="submit" value="Voltar Atr&aacute;s" style="font-weight:bold;">
			</form>
			<?php
				$connection = null;
				?>
		</center>
	</body>
</html>