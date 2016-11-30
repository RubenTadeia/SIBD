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

            /*$autocommit = $connection->exec("SET autocommit=0");
            echo("<p>AUTOCOMMIT: $autocommit</p>");
            $transaction = $connection->exec("START TRANSACTION");
            echo("<p>Transaction: $transaction</p>");*/

            $connection->beginTransaction();

            /*$sqlPatient = "INSERT INTO patient (name, birthday, address) VALUES('Teste 1', '1447-08-15', 'Teste 1')";
            $sqlAppointment = "INSERT INTO patient (name, birthday, address) VALUES('Teste 2', '1945-12-18', 'Teste 2')";*/

            $sqlPatient = "INSERT INTO patient (name, birthday, address) VALUES('Teste 3', '1447-08-15', 'Teste 1')";
            $sqlAppointment = "INSERT INTO patient (patient_id, name, birthday, address) VALUES(15,'Teste 2', '1945-12-18', 'Teste 2')";
            
            echo("<p>$sqlPatient</p>");
            $nrows1 = $connection->exec($sqlPatient);
            echo("<p>Rows inserted: $nrows1</p>");

            echo("<p>$sqlAppointment</p>");
            $nrows2 = $connection->exec($sqlAppointment);
            echo("<p>Rows inserted: $nrows2</p>");
			
			if ($nrows1 > 0 && $nrows2 > 0) {
			$commit = $connection->commit();
            /*$commit = $connection->exec("COMMIT");*/
            echo("<p>Commit: $commit</p>");
            } else {
            $rollback = $connection->rollback();
            /*$rollback = $connection->exec("ROLLBACK"); */
            echo("<p>rollback: $rollback</p>");
            }            
            $connection = null;
            ?>
   </body>
</html>