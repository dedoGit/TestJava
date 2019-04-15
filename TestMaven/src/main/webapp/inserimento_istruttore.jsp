<html>
	<body>
		<h2>Istruttori</h2>
		<form action="<%=request.getContextPath() %>/istruttori" method="post">
			<input type="hidden" name="id">
			 Nome: <input type="text" name="fname"><br>
			 Cognome: <input type="text" name="lname"><br>
			 Telefono: <input type="tel" name="telephone"><br>
			 Email: <input type="email" name="mail"><br>
			 <input type="submit" value="Submit">
		</form> 
	</body>
</html>
