

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EventServlet
 */
@WebServlet("/EventServlet")
public class EventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EventServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		   String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
		   String USER = "root";
		   String PASS = "root";
		   PrintWriter out=response.getWriter();
		   Connection conn = null;
		   try{
		      Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      String sql = "SELECT * FROM event";
		      ResultSet rs = stmt.executeQuery(sql);
		      out.println("<table class = 'table table-bordered table-striped' width = 100% border= 1px solid black padding= 0px><tr> "
		    		  + "<th>Id</th>"
		    		  + "<th>Name</th>"
		    		  + "<th>Location</th>"
		    		  + "<th>Day</th>"
			    	  + "<th>Date</th>"
			    	  + "<th>Start Time</th>"
			    	  + "<th>End Time</th>"
			    	  
			    	  
			    	  + "</tr> ");
		      while(rs.next()){
		    	  int event_id=rs.getInt("event_id"); 
		    	  String event_day=rs.getString("day"); 
		    	  String event_date=rs.getString("date"); 
		    	  String start_time=rs.getString("starttime"); 
		    	  String end_time=rs.getString("endtime");  
		    	  String event_location=rs.getString("location");
		    	  String event_name=rs.getString("eventname");
		    	  //String owner_name = rs.getString("owner_name");
		    	  
		    	  
		    	  out.println(
		    	  ""
		    	  + "<td>" +event_id+ "</td>"
		    	  + "<td>" +event_name+ "</td>"
		    	  + "<td>" +event_location+ "</td>"
		    	  + "<td>" +event_date+ "</td>"
		    	  + "<td>" +event_day+ "</td>"
		    	  + "<td>" +start_time+ "</td>"
		    	  + "<td>" +end_time+ "</td>"
		    	  + "<td><button type='submit' class='btn btn-default' id='delete_"+event_id+"' >Delete</button></td>"
		    	  + "</tr>"
		    	  );
		      }
		      out.print("</table>");
		      
		      rs.close();
		   }catch(SQLException se) {
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
