package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.registerDAO;
import VO.registerVO;

/**
 * Servlet implementation class registerController
 */
@WebServlet("/registerController")
public class registerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerController() {
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
		HttpSession session=request.getSession();
		String flag=request.getParameter("flag");
		if(flag.equals("addmanager"))
		{
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String contactnumber=request.getParameter("contactnumber");
			String email = request.getParameter("email");
			System.out.println("email:"+email +" c:"+contactnumber );
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String passwordconfirm=request.getParameter("passwordconfirm");
			if(!password.equals(passwordconfirm))
			{
				request.setAttribute("msg", "password not matching");
				RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerregister.jsp");
				dispatcher.forward(request, response);
				return;
			}
			registerVO registerVO=new registerVO();
			registerVO.setFirstname(firstname);
			registerVO.setLastname(lastname);
			registerVO.setContactnumber(contactnumber);
			registerVO.setEmail(email);
			registerVO.setUsername(username);
			registerVO.setPassword(password);
			registerVO.setRole("manager");
			registerDAO registerDAO1=new registerDAO();
			int i=registerDAO1.insertNewUser(registerVO);
			if(i==-1)
			{
				request.setAttribute("msg", "user may be existed");
				RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerregister.jsp");
				dispatcher.forward(request, response);
	
			}
			else
			{
				request.setAttribute("msg", " Registration successfull");
				RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerlogin.jsp");
				dispatcher.forward(request, response);

			}
		}
			else if(flag.equals("addemployee"))
			{
				String firstname = request.getParameter("firstname");
				String lastname = request.getParameter("lastname");
				String contactnumber=request.getParameter("contactnumber");
				String email = request.getParameter("email");
				System.out.println("email:"+email +" c:"+contactnumber );
				String username=request.getParameter("username");
				String password=request.getParameter("password");
				String passwordconfirm=request.getParameter("passwordconfirm");
				if(!password.equals(passwordconfirm))
				{
					request.setAttribute("msg", "password not matching");
					RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/employeeregister.jsp");
					dispatcher.forward(request, response);
					return;
				}
				registerVO registerVO=new registerVO();
				registerVO.setFirstname(firstname);
				registerVO.setLastname(lastname);
				registerVO.setContactnumber(contactnumber);
				registerVO.setEmail(email);
				registerVO.setUsername(username);
				registerVO.setPassword(password);
				registerVO.setRole("employee");
				registerDAO registerDAO1=new registerDAO();
				int i=registerDAO1.insertNewUser(registerVO);
				if(i==-1)
				{
					request.setAttribute("msg", "user may be existed");
					RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/employeeregister.jsp");
					dispatcher.forward(request, response);
		
				}
				else
				{
					request.setAttribute("msg", " Registration successfull");
					RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/employeelogin.jsp");
					dispatcher.forward(request, response);

				}
			
		}
	}catch(Exception e)
	{
		request.setAttribute("msg", "fail");
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/register.jsp");
		dispatcher.forward(request, response);
	}
	
	}
	

}
