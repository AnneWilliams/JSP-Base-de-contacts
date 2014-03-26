<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="fr.ifsic.tpjava.j2ee.Personne"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personne</title>
<h1>Informations sur la personne</h1>
</head>
<body>
	<%
		Personne p = null;
	
	
		String id = request.getParameter("identif");
		if (id != null) 
			{ // appel par id
				p = Personne.get(id);
				out.println("Nom <space/>" + p.getNom());
				out.println("<div></div>");
				out.println("<space/>");
				out.println("Prénom <space/>" + p.getPrenom());
				out.println("<div></div>");
				out.println("<space/>");
				out.println("Email <space/>" + p.getEmail());
				out.println("<div></div>");
				out.println("<space/>");
				out.println("Id <space/>" + p.getId());
				out.println("<div></div>");
				out.println("<space/>");
	
			} 
		else 
			{ // appel par nom+prénom+email
				String nom = request.getParameter("nom");
				String prenom = request.getParameter("prenom");
				String email = request.getParameter("email");
			
				
				
					p = new Personne(nom, prenom, email);
					if (  ( p.getNom()!="" && p.getNom().startsWith(" ")) && (p.getPrenom()!="" && p.getPrenom()!=" ") && (p.getEmail()!="" && p.getEmail()!=" "))
					{ 
				Personne.add(p);
		
			
				
					
						out.println("Nom <space/>" + p.getNom());
						out.println("<div></div>");
						out.println("<space/>");
						out.println("Prénom <space/>" + p.getPrenom());
						out.println("<div></div>");
						out.println("<space/>");
						out.println("Email <space/>" + p.getEmail());
						out.println("<div></div>");
						out.println("<space/>");
						out.println("Id <space/>" + p.getId());
						out.println("<div></div>");
						out.println("<space/>");
			
					}
		
				else 
					{
						out.println("veuillez compléter les champs svp");
						out.println("<br/>");
						out.println("<a href=addPersonneT.jsp> Retour </a>" );
					}
		
			}
			
		
		
	%>
	
</body>
</html>