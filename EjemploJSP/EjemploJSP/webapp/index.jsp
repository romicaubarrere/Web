<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.beans.Persona"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Mi primer sitio JSP</title>
</head>
<body>

<h1> Uso de objeto de tipo Persona usando tags JSP</h1>

<jsp:useBean id="persona" scope="page" class="com.beans.Persona" />
<jsp:setProperty name="persona" property="nombre" value="Juan" />
<jsp:setProperty name="persona" property="direccion" value="Rodo 1234" />
<jsp:setProperty name="persona" property="id" value="1" />
<p>
<pre> Mostrar datos de persona usando tags JSP
 &lt;jsp:getProperty name="persona" property="nombre" /&gt;>
 </pre>
</p>
<h3>Datos de la persona:</h1>
<p>Nombre: <jsp:getProperty name="persona" property="nombre" /></p>
<p>Direccion: <jsp:getProperty name="persona" property="direccion" /></p>
<p>ID: <jsp:getProperty name="persona" property="id" /></p>

<p></p>
<p>
<pre>Usando secuencia de escape \${persona.nombre}</pre>
</p>
<h3>Datos de la persona:</h1>
<p>Nombre: ${persona.nombre}</p>
<p>Direccion: ${persona.direccion}</p>
<p>ID: ${persona.id}</p>


</body>
</html>