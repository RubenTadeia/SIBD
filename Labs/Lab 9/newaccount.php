<html>
   <body>
      <form action="insert.php" method="post">
         <h3>Insert a new account</h3>
         <p>Account no.: <input type="text" name="account_number"/></p>
         <p>Branch:
            <select name="branch_name">
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
               $sql = "SELECT branch_name FROM branch ORDER BY branch_name";
               $result = $connection->query($sql);
               if ($result == FALSE)
               {
               $info = $connection->errorInfo();
               echo("<p>Error: {$info[2]}</p>");
               exit();
               }
               foreach($result as $row)
               {
               $branch_name = $row['branch_name'];
               echo("<option value=\"$branch_name\">$branch_name</option>");
               }
               $connection = null;
               ?>
            </select>
         </p>
         <p>Balance: <input type="text" name="balance"/></p>
         <p><input type="submit" value="Submit"/></p>
      </form>
   </body>
</html>