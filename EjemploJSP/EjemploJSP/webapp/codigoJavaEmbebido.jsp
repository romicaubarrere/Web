<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.beans.Persona"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Mi primer sitio JSP</title>
</head>
<body>
<h1> Usar java embebido en pagina jsp </h1>
<%
Persona persona = new Persona();
persona.setNombre("Juan");
persona.setDireccion("Rodo 1234");
persona.setId(1);
%>


<p>
<pre> Mostrar datos de objeto de tipo Persona usando codigo embebido &lt;%=  %&gt;
</pre>
</p>

<h3>Datos de la persona:</h1>
<p>Nombre: <%=persona.getNombre()%></p>
<p>Direccion: <%=persona.getDireccion()%></p>
<p>ID: <%=persona.getId()%></p>
</body>

</body>
</html>