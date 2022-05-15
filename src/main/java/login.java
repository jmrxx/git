

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/** 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String nombre = request.getParameter("user");
		String password = request.getParameter("password");
		String captcha  = request.getParameter("checkbox");
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");

		if (nombre.equals("jose") && password.equals("1") && captcha.equals("huma")) {
	
	   
		response.sendRedirect("crear_carta.jsp"); // Si la contraseña es correcta y la contraseña y el capcha, nos dirigira a la pagina principal
	   
	   
		} else {
			out.println("Nombre o contraseña, seleccione el capcha incorrectos");
			
			response.sendRedirect("index.jsp"); // redirige al index.jsp
 
		}

		
	}

}
