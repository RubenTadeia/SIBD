<html>
   <body>
      <?php
         $account_from = $_REQUEST['account_from'];
         $account_to = $_REQUEST['account_to'];
         $amount = (float)$_REQUEST['amount'];
         if ($amount > 0.0)
         {
         $host = "db.ist.utl.pt";
         $user = "ist175268";
         $pass = "ouup7210";
         $dsn = "mysql:host=$host;dbname=$user";
         $connection = new PDO($dsn, $user, $pass);
         $connection->beginTransaction();
         $sql = "UPDATE account SET balance=balance-$amount WHERE
         account_number='$account_from'";
         $connection->exec($sql);
         $sql = "SELECT balance FROM account WHERE account_number='$account_from'";
         $result = $connection->query($sql);
         $row = $result->fetch();
         $balance = $row['balance'];
         if ($balance < 0)
         {
         echo("<p>Not enough balance!</p>");
         $connection->rollback();
         }
         else
         {
         $sql = "UPDATE account SET balance=balance+$amount WHERE
         account_number='$account_to'";
         $connection->exec($sql);
         $connection->commit();
         echo("<p>Transfer complete!</p>");
         }
         $connection = null;
         }
         else
         {
         echo("<p>Please specify a positive amount.</p>");
         }
         ?>
   </body>
</html>