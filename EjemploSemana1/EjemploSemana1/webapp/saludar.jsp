<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="org.utec.utils.Saludos"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<%
		//obtenemos nombre desde la informacion del request (que viene del formulario)
	String nombre = request.getParameter("nombre");
	//creamos una instancia del servicio que gestiona saludos
	Saludos saludos = new Saludos();
	//utilizando el servicio saludos, generamos el texto de saludo, utilizando el nombre ingresado
	String textoSaludo = saludos.saludar(nombre);
	%>
	<h1>Curso App Web</h1>
	<h2><%= textoSaludo %></h2>
	
</body>
</html>