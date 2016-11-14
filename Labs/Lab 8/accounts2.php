<html>
   <body>
      <h3>Table <em>account</em> (version 2)</h3>
      <table border="1">
         <tr>
            <td><em>account_number</em></td>
            <td><em>branch_name</em></td>
            <td><em>balance</em></td>
         </tr>
         <?php
            $accounts[0] = array('A-101', 'Downtown', 500);
            $accounts[1] = array('A-102', 'Perryridge', 400);
            $accounts[2] = array('A-201', 'Brighton', 900);
            $accounts[3] = array('A-215', 'Mianus', 700);
            $accounts[4] = array('A-217', 'Brighton', 750);
            $accounts[5] = array('A-222', 'Redwood', 700);
            $accounts[6] = array('A-305', 'Round Hill', 350);
            
            for ($i = 0; $i < count($accounts); $i++)
            {
                echo("<tr>");
                
                for ($j = 0; $j < count($accounts[$i]); $j++)
                {
                    echo("<td>{$accounts[$i][$j]}</td>");
                }
                
                echo("</tr>\n");
            }
            
         ?>
      </table>
   </body>
</html>