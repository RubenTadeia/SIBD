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
         $account_number = $_REQUEST['account_number'];
         $branch_name = $_REQUEST['branch_name'];
         $balance = $_REQUEST['balance'];
         $sql = "INSERT INTO account VALUES ('$account_number', '$branch_name', $balance)";
         echo("<p>$sql</p>");
         $nrows = $connection->exec($sql);
         echo("<p>Rows inserted: $nrows</p>");
         $connection = null;
         ?>
   </body>
</html>