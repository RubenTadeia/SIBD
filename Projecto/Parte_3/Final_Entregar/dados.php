<html>
 <body>
 
<?php
	$host = "db.tecnico.ulisboa.pt";
	$user = "ist175682";
	$pass = "fjlu8957";
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
	$nome = "select name, birthday, address from patient where name = '$patient_name'";
	

	$result = $connection->query($nome);
	
	$nrows = $result->rowCount();

	if($nrows>=1){
		echo("<table border=\"1\">");
		echo("<tr><td>name</td><td>birthday</td>
		<td>address</td></tr>");
			foreach($result as $row)
			{
				echo("<tr><td>");
				echo($row['name']);
				echo("</td><td>");
				echo($row['birthday']);
				echo("</td><td>");
				echo($row['address']);
				echo("</td></tr>");
			}
		echo("</table>"); 
		
	?> <a href = "appointment.php" > Prosseguir </a>
	<?php
	} else {
		?> <a href = "ruben.php" > Novo Paciente </a>
	<?php
	}
	

	$connection = null;

?>

</form>
</body>
</html>