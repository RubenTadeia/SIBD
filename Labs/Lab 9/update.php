<html>
   <body>
      <?php
         $host = "db.ist.utl.pt";
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
         $account_number = $_REQUEST['account_number'];
         $balance = $_REQUEST['balance'];
         $sql = "UPDATE account SET balance = $balance WHERE account_number =
         '$account_number'";
         echo("<p>$sql</p>");
         $nrows = $connection->exec($sql);
         echo("<p>Rows updated: $nrows</p>");
         $connection = null;
         ?>
   </body>
</html>