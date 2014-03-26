<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="fr.ifsic.tpjava.j2ee.Personne" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajout de personne</title>
</head>
<body>
<form method="post" action="personne2.jsp">
<table>
<tr>
<td><body>Nom:</body></td>
<td><input type=nom name="nom"></input></td>
</tr>

<tr>
<td><body>Prenom:</body></td>
<td><input type=prenom name="prenom"></input></td>
</tr>
<tr>
<td><body>Email:</body></td>
<td><input type=email name="email"></input></td>
</tr>
</table>
<input type="submit">
</form>


</body>
</html>