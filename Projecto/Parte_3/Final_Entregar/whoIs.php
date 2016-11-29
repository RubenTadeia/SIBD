<html>
	<head>
		<title>Who is Calling ?</title>
	</head>
	<body>
		<center>
			<form action="patients.php" method="post">
				<fieldset style="border: 2px solid rgb(255,77,20);">
					<legend>Quem nos est&aacute a ligar ?</legend>
					<br>
					<img src="images/calling.gif" alt="calling" style="width:315px;height:180px;">
					<br>
					<h3>Procura de Paciente</h3>
					<p>Insira o nome: <input type="text" name="patient_name"/></p>
					<p><input type="submit" value="Submeter"/></p>
				</fieldset>
			</form>
			<br><br>
			<fieldset style="border: 2px solid rgb(77,255,20);">
				<legend>Quem est&aacute associado ?</legend>
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
					$nome = "select name, birthday, address from patient";
					
					$result = $connection->query($nome);
					
					$nrows = $result->rowCount();
				
					if($nrows>=1){
						echo("<table border=\"1\" cellspacing=\"5\">\n");
						echo("<tr><td>Name</td><td>Birthday</td><td>Address</td></tr>");
							foreach($result as $row)
							{ 
								echo("</td><td>");
								echo($row['name']);
								echo("</td><td>");
								echo($row['birthday']);
								echo("</td><td>");
								echo($row['address']);
								echo("</td></tr>");
							}
						echo("</table>"); 
						<br>	
				?>
				<br><br>
			</fieldset>
		</center>
	</body>
</html>