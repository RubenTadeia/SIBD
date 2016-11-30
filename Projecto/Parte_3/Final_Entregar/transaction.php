<html>
   <head>
      <title>Transaction</title>
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

            $autocommit = $connection->exec("SET AUTOCOMMIT=0");
            $transaction = $connection->exec("START TRANSACTION");
            
            $sqlPatient = "INSERT INTO patient (name, birthday, address) VALUES('Teste 1', '1447-08-15', 'Teste 1')";
            $sqlAppointment = "INSERT INTO patient (name, birthday, address) VALUES('Teste 2', '1945-12-18', 'Teste 2')";
            
            echo("<p>$sqlPatient</p>");
            $nrows1 = $connection->exec($sqlPatient);
            echo("<p>Rows inserted: $nrows1</p>");

            echo("<p>$sqlAppointment</p>");
            $nrows2 = $connection->exec($sqlAppointment);
            echo("<p>Rows inserted: $nrows2</p>");
			
			if ($nrows1 > 0 && $nrows2 > 0) {
            $commit = $connection->exec("COMMIT");
            } else {
            $rollback = $connection->exec("ROLLBACK");
            }            
            $connection = null;
            ?>
   </body>
</html>