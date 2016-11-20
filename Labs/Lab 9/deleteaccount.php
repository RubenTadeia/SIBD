<html>
   <body>
      <h3>Deleting the account <?=$_REQUEST['account_number']?></h3>
      <form action="removeaccount.php" method="post">
         <p><input type="hidden" name="account_number"
            value="<?=$_REQUEST['account_number']?>"/></p>
         <p>Press Confirm to delete the account</p>
         <p><input type="submit" value="Confirmar"/></p>
      </form>
   </body>
</html>