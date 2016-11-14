<html>
   <body>
      <h3>Table <em>account</em> (version 4)</h3>
      <table border="1">
         <tr>
            <td><em>account_number</em></td>
            <td><em>branch_name</em></td>
            <td><em>balance</em></td>
         </tr>
         <?php
            $accounts['A-101'] = array('branch_name' => 'Downtown', 'balance' => 500);
            $accounts['A-102'] = array('branch_name' => 'Perryridge', 'balance' => 400);
            $accounts['A-201'] = array('branch_name' => 'Brighton', 'balance' => 900);
            $accounts['A-215'] = array('branch_name' => 'Mianus', 'balance' => 700);
            $accounts['A-217'] = array('branch_name' => 'Brighton', 'balance' => 750);
            $accounts['A-222'] = array('branch_name' => 'Redwood', 'balance' => 700);
            $accounts['A-305'] = array('branch_name' => 'Round Hill', 'balance' => 350);
            
            foreach ($accounts as $account_number => $account)
            {
               echo("<tr>");
               echo("<td>$account_number</td>");
               echo("<td>{$account['branch_name']}</td>");
               echo("<td>{$account['balance']}</td>");
               echo("</tr>\n");
            }
         ?>
      </table>
   </body>
</html>