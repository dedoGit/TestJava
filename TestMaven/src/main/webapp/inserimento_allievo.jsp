<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserimento Allievi</title>
<form action="<%=request.getContextPath() %>/allievi" method="post">
	<input type="hidden" name="id">
	<fieldset>
		<legend>Dati Anagrafici</legend>
		<label>Nome: <input type="text" name="nome" required="required"></label><br/>
		<label>Cognome: <input type="text" name="cognome" required="required"></label><br/>
		<p>Sesso: 
			<label>Maschio <input type="radio" name="sesso" value="M" CHECKED></label> 
			<label>Femmina <input type="radio" name="sesso" value="F"></label>
		</p></br>
		<label>Data di Nascita: <input type="date" name="dataNascita" required="required"></label><br/>
	</fieldset>
	<fieldset>
		<legend>Contatti</legend>
		<label>Telefono: <input type="text"></label>
		<label>e-mail: <input type="email"></label>
	</fieldset>
	<p>
		<p>Note:</p> 
		<textarea name="note" cols="30" rows="5"></textarea>
	</p>
	<button type="submit">Conferma</button>
</form>
</head>
<body>

</body>
</html>