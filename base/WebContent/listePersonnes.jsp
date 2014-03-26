<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="fr.ifsic.tpjava.j2ee.Personne" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recherche</title>
</head>
<body>
<center><p><h1>Chercher une personne</h1></p></center>
<center><p>Donner l'identifiant de la personne que vous souhaitez visualiser</p></center>



<form method="post" action="personne.jsp">
<center>
<select name="identif" size="2">
<% 

for (int i=0; i<Personne.listIds().length; i++) {
%> 
<option value="<% String id = Personne.listIds()[i]; out.print(id);%>">
<%
out.print(Personne.get(id).getNom());
}
%>
</option>
</select>
</center>
<br/>
<center>
<input type="submit" value="Submit">
</center>
</form>
</body>
</html>