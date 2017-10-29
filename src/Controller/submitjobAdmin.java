package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.submitjobDAO;
import VO.submitjobVO;

/**
 * Servlet implementation class submitjobAdmin
 */
@WebServlet("/submitjobAdmin")
public class submitjobAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public submitjobAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String eventname = request.getParameter("eventname");
	       String num = request.getParameter("num");
	       String location = request.getParameter("location");
	       String jobcategory = request.getParameter("jobcategory");
	       String date = request.getParameter("date");
	       String day = request.getParameter("day");
	       String starttime = request.getParameter("starttime");
	       String endtime = request.getParameter("endtime");
	       String eventdes = request.getParameter("eventdes");
	       HttpSession session = request.getSession(true);
	       
	    	   submitjobVO event= new submitjobVO();
	            
	            event.setEventname(eventname);
	            event.setNum(num);
	            event.setLocation(location);
	            event.setJobcategory(jobcategory);
	            event.setDate(date);
	            event.setDay(day);
	            event.setStarttime(starttime);
	            event.setEndtime(endtime);
	            event.setEventdes(eventdes);
	           submitjobDAO submitjobdao= new submitjobDAO();
	           submitjobdao.submitevent(event);
	           System.out.println("Here2222...");
	           request.setAttribute("msg", " Event Submitted in Database");
	           RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/admin/AdminHome.jsp");
	           dispatcher.forward(request, response);
				return;
	}

}
