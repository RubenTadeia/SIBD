<html>
 <body>
 
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
	$nome = "select name, birthday, address, patient_id from patient where name = '$patient_name'";
	
	$result = $connection->query($nome);
	
	$nrows = $result->rowCount();?>

	<form action="appointment.php" method="post">

	<?php
	if($nrows>=1){
		echo("<table border=\"1\">");
		echo("<tr><td></td><td>Id</td><td>name</td><td>birthday</td>
		<td>address</td></tr>");
			foreach($result as $row)
			{
				echo("<tr><td>");
				?><input type="radio" name="patient_id" value="<?php echo($row['patient_id']); ?>" checked><?php 
				echo("</td><td>");
				echo($row['patient_id']);
				echo("</td><td>");
				echo($row['name']);
				echo("</td><td>");
				echo($row['birthday']);
				echo("</td><td>");
				echo($row['address']);
				echo("</td></tr>");?> <br><?php
			}
		echo("</table>"); 
		
	?> <input type="submit" value="Agendar">
	<?php
	} else {
		?> <h3>Paciente nao consta na base de dados!<br>Pff registe o novo paciente.</h3>
	<?php
	}
	?>
	</form>
	<form action="ruben.php" method="post">
		<input type="submit" value="Novo Paciente">
	</form>
	<?php
	
	$connection = null;
?>

</form>
</body>
</html>