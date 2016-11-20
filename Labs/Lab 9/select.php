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
         $sql = "SELECT balance FROM account WHERE account_number='$account_number'";
         echo("<p>$sql</p>");
         $result = $connection->query($sql);
         $nrows = $result->rowCount();
         if ($nrows == 0)
         {
         echo("<p>There is no account with such number.</p>");
         }
         else
         {
         $row = $result->fetch();
         $balance = $row['balance'];
         echo("<p>The balance of $account_number is: $balance</p>");
         }
         $connection = null;
         ?>
   </body>
</html>