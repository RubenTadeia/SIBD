<html>
   <body>
      <h3>Table <em>account</em> (version 5)</h3>
      <table border="1">
         <tr>
            <td><em>account_number</em></td>
            <td><em>branch_name</em></td>
            <td><em>balance</em></td>
         </tr>
         <?php
            $accounts = array(
            array('account_number' => 'A-101', 'branch_name' => 'Downtown', 'balance' => 500),
            array('account_number' => 'A-102', 'branch_name' => 'Perryridge', 'balance' => 400),
            array('account_number' => 'A-201', 'branch_name' => 'Brighton', 'balance' => 900),
            array('account_number' => 'A-215', 'branch_name' => 'Mianus', 'balance' => 700),
            array('account_number' => 'A-217', 'branch_name' => 'Brighton', 'balance' => 750),
            array('account_number' => 'A-222', 'branch_name' => 'Redwood', 'balance' => 700),
            array('account_number' => 'A-305', 'branch_name' => 'Round Hill', 'balance' => 350)
            );
            
            reset($accounts);
            $account = current($accounts);
            
            while ($account)
            {
               echo("<tr>");
               echo("<td>{$account['account_number']}</td>");
               echo("<td>{$account['branch_name']}</td>");
               echo("<td>{$account['balance']}</td>");
               echo("</tr>\n");
               
               $account = next($accounts);
            }
         ?>
      </table>
   </body>
</html>