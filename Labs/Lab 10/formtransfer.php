<?php
   $host = "db.ist.utl.pt";
   $user = "ist175268";
   $pass = "ouup7210";
   $dsn = "mysql:host=$host;dbname=$user";
   $connection = new PDO($dsn, $user, $pass);
   $sql = "SELECT account_number FROM account ORDER BY account_number";
   $result = $connection->query($sql);
   $rows = $result->fetchAll();
   $connection = null;
   ?>
<html>
   <body>
      <form action="exectransfer.php" method="post">
         <p>From account:
            <select name="account_from">
            <?php
               foreach($rows as $row)
               {
               $account_number = $row['account_number'];
               echo("<option
               value=\"$account_number\">$account_number</option>");
               }
               ?>
            </select>
         </p>
         <p>To account:
            <select name="account_to">
            <?php
               foreach($rows as $row)
               {
               $account_number = $row['account_number'];
               echo("<option
               value=\"$account_number\">$account_number</option>");
               }
               ?>
            </select>
         </p>
         <p>Amount:
            <input type="text" name="amount"/>
         </p>
         <p><input type="submit" value="Execute transfer"/></p>
      </form>
   </body>
</html>