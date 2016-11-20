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
         $sql = "SELECT * FROM account";
         $result = $connection->query($sql);
         if ($result == FALSE)
         {
         $info = $connection->errorInfo();
         echo("<p>Error: {$info[2]}</p>");
         exit();
         }
         echo("<table border=\"1\">");
         echo("<tr><td>account_number</td><td>branch_name</td><td>balance</td></tr>");
         foreach($result as $row)
         {
         echo("<tr><td>");
         echo($row['account_number']);
         echo("</td><td>");
         echo($row['branch_name']);
         echo("</td><td>");
         echo($row['balance']);
         echo("</td></tr>");
         }
         echo("</table>");
         $connection = null;
         ?>
   </body>
</html>