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
					String s=new String(" ");
					String s1=new String("");
					//String s2=new String(" ");
					//String s3=new String("");
					//String s4=new String(" ");
					//String s5=new String("");
					
					
					if (p.getNom().contains(s)==true || p.getNom().equals(s1)==true || p.getPrenom().contains(s)==true || p.getPrenom().equals(s1)==true || p.getEmail().contains(s)==true || p.getEmail().equals(s1)==true)
								{ 
									
									
									out.println("veuillez compléter les champs svp");
									out.println("<br/>");
									out.println("<a href=addPersonneT.jsp> Retour </a>" );
							
								}
								
								else 
									
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
							
							}
						
						
						
					
							
			
		
		
	%>
	
</body>
</html>