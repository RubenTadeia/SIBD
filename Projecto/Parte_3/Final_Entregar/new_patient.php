<html>
  <head>
    <title>Adicionar Novo Paciente</title>
  </head>
   <body>
      <h3>Menu da Al&iacute;nea A</h3>
      <fieldset>
         <legend>Inserir Edif&iacute;cio</legend>
         <form action="inserirEdificio.php" method="post">
            <p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
            <p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
            <p>Morada Novo Edificio: <input type="text" name="morada"/></p>
            <p><input type="submit" value="InserirEdificio"/></p>
         </form>
      </fieldset>
      <fieldset>
         <legend>Inserir Espaco</legend>
         <form action="inserirEspaco.php" method="post">
            <p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
            <p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
            <p>Morada Edif&iacute;cio que exista: <input type="text" name="morada"/></p>
            <p>Novo c&oacute;digo: <input type="text" name="codigo"/></p>
            <p><input type="submit" value="InserirEspaco"/></p>
         </form>
      </fieldset>
      <fieldset>
         <legend>Inserir Posto</legend>
         <form action="inserirPosto.php" method="post">
            <p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
            <p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
            <p>Morada Edif&iacute;cio que exista: <input type="text" name="morada"/></p>
            <p>Novo C&oacute;digo: <input type="text" name="codigo"/></p>
            <p>C&oacute;digo Espa&ccedil;o existente: <input type="text" name="codigo_espaco"/></p>
            <p><input type="submit" value="InserirPosto"/></p>
         </form>
      </fieldset>
      <fieldset>
         <legend>Remover Edif&iacute;cio</legend>
         <form action="removerEdificio.php" method="post">
            <p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
            <p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
            <p>Morada do Edif&iacute;cio: <input type="text" name="morada"/></p>
            <p><input type="submit" value="RemoverEdificio"/></p>
         </form>
      </fieldset>
      <fieldset>
         <legend>Remover Espa&ccedil;o</legend>
         <form action="removerEspaco.php" method="post">
            <p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
            <p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
            <p>Morada Edif&iacute;cio que exista: <input type="text" name="morada"/></p>
            <p>C&oacute;digo do Espaco: <input type="text" name="codigo"/></p>
            <p><input type="submit" value="RemoverEspaco"/></p>
         </form>
      </fieldset>
      <fieldset>
         <legend>Remover Posto</legend>
         <form action="removerPosto.php" method="post">
            <p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
            <p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
            <p>Morada Edif&iacute;cio que exista: <input type="text" name="morada"/></p>
            <p>C&oacute;digo do Posto: <input type="text" name="codigo"/></p>
            <p><input type="submit" value="RemoverPosto"/></p>
         </form>
      </fieldset>
   </body>
</html>