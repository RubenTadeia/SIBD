<!DOCTYPE html>
<html>
   <head>
      <title>Projecto Parte III - Grupo 15</title>
   </head>
   <body>
      <center>
         <img src="images/IST.jpeg" alt="Logo" style="width:630px;height:380px;">
         <h1 style="color:blue;">INSTITUTO SUPERIOR T&Eacute;CNICO</h1>
         <p>SISTEMAS DE INFORMA&Ccedil;&Atilde;O E BASES DE DADOS</p>
         <br><br>
         <form action="begin.php" method="post">
            <p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
            <p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
            <p><input type="submit" value="Lets Start!" style="font-weight:bold;"/></p>
         </form>
         <br>
         <p>Autores:</p>
         <br>
         <p>R&uacute;ben Tadeia --> N&deg; 75268</p>
         <p>Carla Marreiros --> N&deg; 75682</p>
         <p>Bruno Pereirinha --> N&deg; 79297</p>
      </center>
   </body>
</html>