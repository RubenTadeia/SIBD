<html>
   <body>
      <h3>Table <em>account</em> (version 3)</h3>
      <table border="1">
         <tr>
            <td><em>account_number</em></td>
            <td><em>branch_name</em></td>
            <td><em>balance</em></td>
         </tr>
         <?php
            $accounts['A-101'] = array('Downtown', 500);
            $accounts['A-102'] = array('Perryridge', 400);
            $accounts['A-201'] = array('Brighton', 900);
            $accounts['A-215'] = array('Mianus', 700);
            $accounts['A-217'] = array('Brighton', 750);
            $accounts['A-222'] = array('Redwood', 700);
            $accounts['A-305'] = array('Round Hill', 350);
            
            foreach ($accounts as $account_number => $account)
            {
               echo("<tr>");
               echo("<td>$account_number</td>");
               
                  for ($j = 0; $j < count($account); $j++)
                  {
                     echo("<td>{$account[$j]}</td>");
                  }
               
               echo("</tr>\n");
            }
         ?>
      </table>
   </body>
</html>