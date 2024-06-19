

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;


public class registerServlet extends HttpServlet {
	Connection con;
	public void init(ServletConfig config)
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root" , "root");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try {
		PreparedStatement st = con.prepareStatement("insert into users values('"+name+"' ,'"+username+"','"+password+"')");
		st.executeUpdate();
		out.println("Register succefully<br>");
		out.println("Click <a href = \"/My/Login.jsp\">here</a> to login");
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	public void destroy()
	{
		try {
			con.close();
		}
		catch(Exception e){
			
		}
	}

}
