<html>
  <head>
    <title>Adicionar Novo Paciente</title>
  </head>
   	<body background="images/background4.jpeg">
		<!-- Referências Bibliográficas: Link: https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fbestwallpaperhd.com%2Fwp-content%2Fuploads%2F2015%2F03%2FMedical-Symbol.jpg&f=1-->
      <h3><strong>Adicionar Novo Paciente</strong></h3>
      <br><br>
      <fieldset style="border: 2px solid rgb(10,10,255);">
         <legend><strong>Por Favor Preencha os dados de Utilizador</strong></legend>
         <form action="new_appointment.php" method="post">
            <p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
            <p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
            <p>Nome Do Paciente: <input type="text" name="pName" placeholder="Exemplo: Jo&atilde;o Miguel da Silva Cruz" size="60" /></p>
            <p>Escolha a Data de Nascimento: <input type="date" name="pBirthday"/></p>
            <p>Morada Do Paciente: <input type="text" name="pAddress" placeholder="Exemplo: Rua dos Actores Lote 27, 2&deg; Esquerdo" size="60" /></p>
            <p><input type="submit" value="Completar Registo" style="font-weight:bold;"/></p>
         </form>
      </fieldset>
   </body>
</html>