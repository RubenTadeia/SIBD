<html>
	<head>
		<title>Who is Calling ?</title>
	</head>
	<body>
			<form action="patients.php" method="post">
				<p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
            	<p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
				<fieldset style="border: 2px solid rgb(255,77,20);">
					<legend><strong>Quem nos est&aacute; a ligar ?</strong></legend>
					<br>
					<div>
						<left>
							<img src="images/calling.gif" alt="calling" style="width:315px;height:180px;">
							<br>
							<h3>Procura de Paciente Por Nome</h3>
							<p>Insira o Nome: <input type="text" name="patient_name"/></p>
							<p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
            				<p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
							<p><input type="submit" value="Submeter"/></p>
						</left>
					</div>
					<div>
						<right>
							<img src="images/calling.gif" alt="calling" style="width:315px;height:180px;">
							<br>
							<h3>Procura de Paciente Por ID</h3>
							<p>Insira o ID: <input type="text" name="patient_name"/></p>
							<p><input type="submit" value="Submeter"/></p>
						</right>
					</div>
				</fieldset>
			</form>
	</body>
</html>