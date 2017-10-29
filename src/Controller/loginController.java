package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

import DAO.loginDAO;

import VO.loginVO;
import VO.registerVO;

/**
 * Servlet implementation class loginController
 */
@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	try{
			String action=request.getParameter("action");
			if(action !=null && action.equals("logout"))
			{
				request.getSession().setAttribute("username", null);
				request.setAttribute("msg", "logout suceesfully");
				RequestDispatcher dispatcher2=getServletContext().getRequestDispatcher("/user/employeelogin.jsp");
	        	dispatcher2.forward(request, response);
	        	return;
			}
				
			String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        System.out.println("un:"+username+"  pwd:"+password);
	        loginDAO logindao=new loginDAO();
	        registerVO registervo=new registerVO(); 
	        registervo.setUsername(username);
	        registervo.setPassword(password);
	        registerVO loginvo=logindao.authentication(registervo);
	        System.out.println("pwd:"+loginvo.getPassword());
	        System.out.println("un:"+loginvo.getUsername());
	        if(loginvo!=null)
	        {
	        	request.setAttribute("msg", " Welcome : "+loginvo.getUsername()+" role:"+loginvo.getRole());
	        	request.getSession().setAttribute("username", loginvo.getUsername());
				
	        	RequestDispatcher dispatcher=null;
	        	if(loginvo.getRole().equals("employee"))
	        	{
	        		dispatcher=getServletContext().getRequestDispatcher("/user/employeeprofile.jsp");
	        	}
	        	else if(loginvo.getRole().equals("manager"))
	        	{
	        		System.out.println("manager condition...");
	        		dispatcher=getServletContext().getRequestDispatcher("/user/managerprofile.jsp");
	        	}
	        	else if(loginvo.getRole().equals("admin"))
	        	{
	        		System.out.println("admin condition...");
	        		dispatcher=getServletContext().getRequestDispatcher("/admin/AdminHome.jsp");
	        	}
	        	else
	        	{
	        		request.setAttribute("msg", "login failes");
	        		dispatcher=getServletContext().getRequestDispatcher("/user/employeelogin.jsp");
	        	}
	        	dispatcher.forward(request, response);
	        	return;
	        }
	}catch(Exception e)
	{
		System.out.println(e);
		e.printStackTrace();
	}
	    
	}
	  }


