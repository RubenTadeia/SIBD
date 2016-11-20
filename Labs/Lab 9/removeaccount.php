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
         $sql = "DELETE from account  WHERE account_number =
         '$account_number' limit 1";
         echo("<p>$sql</p>");
         $nrows = $connection->exec($sql);
         echo("<p>Rows updated: $nrows</p>");
         $connection = null;
         ?>
   </body>
</html>