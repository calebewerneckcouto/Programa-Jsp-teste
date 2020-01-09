<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:useBean id="calcula" class="beans.BeanCursoJsp"
	type="beans.BeanCursoJsp" scope="page" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<center><title>PROGRAMA JAVAWEB</title>
<h3 style="color: white">${msg}</h3></center>
<link rel="stylesheet" href="resources/css/estilo.css">


</head>
<body>
	<div class="login-page">
		<div class="form">

<input type="hidden"
		id="url" name="url" value="<%= request.getParameter("url")%>">
			<form action="LoginServlet" method="post" class="login-form">
				Login: <input type="text" id="login" name="login"> <br />
				Senha: <input type="password" id="senha" name="senha"> <br />

				
				<button type="submit" value="Logar">Logar</button>


			</form>

		

</body>
</html>