<html>
	<head>
		<title>Sucesso!</title>
	</head>
	<body background="images/success.jpeg">
		<!-- Referências Bibliográficas: Link: http://hd4wallpapers.net/wp-content/uploads/2014/11/christmas_wallpaper_full_hd-1024x576.jpg-->
		<center>
			<br><br>
			<form action="begin.php" method="post">
				<p><input type="hidden" name="istid" value="<?=$_REQUEST['istid']?>"/></p>
				<p><input type="hidden" name="pass" value="<?=$_REQUEST['pass']?>"/></p>
				<fieldset style="border: 2px solid rgb(50,255,20);">
					<legend style="color:#FFFFFF"><strong>Confirmado!</strong></legend>
					<br>
					<h3 style="color:#FFFFFF">A sua marca&ccedil;&atilde;o foi executada com Sucesso</h3>
					<p><input type="submit" value="Regressar" style="font-weight:bold;"/></p>
			</form>
		</center>
	</body>
</html>