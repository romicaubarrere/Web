package org.utec.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.utec.utils.Saludos;

/**
 * Servlet implementation class SaludarServlet
 */
@WebServlet("/saludar")
public class SaludarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaludarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Obtener parametro 'nombre' dede el request (la peticion que se hace desde el formulario)
		String nombre=request.getParameter("nombre");
		Saludos saludos=new Saludos();
		//generar saludo
		String textoSaludo=saludos.saludar(nombre);
		//generar la salida que se muestra al que envio la peticion
		//utilizamos reponse para generar la salida
		response.setContentType("text/html");
		
		StringBuffer buf= new StringBuffer();
		buf.append("<html>\n");
		buf.append("<h1> Curso App Web </h1>\n");
		buf.append("<h2>"+ textoSaludo+ "</h2>\n");
		buf.append("</html>\n");
		
		response.getWriter().append(buf.toString());
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
