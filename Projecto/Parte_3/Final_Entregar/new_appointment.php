<html>
	<head>
		<title>Agendar Consulta</title>
	</head>
	<body>
		<body>
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
				$pName = $_REQUEST['pName'];
				$pBirthday = $_REQUEST['pBirthday'];
				$pAddress = $_REQUEST['pAddress'];
				$sql = "INSERT INTO patient (name, birthday, address) VALUES ('$pName', '$pBirthday', '$pAddress')";
				echo("<p>$sql</p>");
				$nrows = $connection->exec($sql);
				echo("<p>Rows inserted: $nrows</p>");
				$connection = null;
				?>
	</body>
</html>