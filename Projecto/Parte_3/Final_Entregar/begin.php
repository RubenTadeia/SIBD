<html>
	<head>
		<title>Quem nos est&aacute; a Ligar?</title>
	
	</head>
	<body background="images/background2.jpeg">
		<!-- Referências Bibliográficas: Link: https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fcoastalmedical.net%2Fassets%2Fpagebackground2.jpg&f=1-->
		<center>
			<br><br>
			<form action="patients.php" method="post">
				<p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
				<p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
				<fieldset style="border: 2px solid rgb(50,255,20);">
					<legend><strong>Quem nos est&aacute; a ligar ?</strong></legend>
					<br>
					<h3>Procura de Paciente Por Nome</h3>
					<p>Insira o Nome: <input type="text" name="patient_name"/></p>
					<p><input type="submit" value="Submeter"/></p>
				</fieldset>
			</form>
		</center>
	</body>
</html>