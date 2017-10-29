

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
 * Servlet implementation class EventOwner
 */
@WebServlet("/Employees")
public class Employees extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employees() {
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
		      String sql = "SELECT * FROM user where role='employee'";
		      ResultSet rs = stmt.executeQuery(sql);
		      out.println("<table class = 'table table-bordered table-striped' width = 100% border= 1px solid black padding= 0px><tr> "
		    		  + "<th>Id</th>"
			    	  + "<th>First Name</th>"
			    	  + "<th>Last Name</th>"
			    	  + "<th>Email</th>"
			    	  + "<th>Phone No</th>"
			    	 
			    	 
			    	  
			    	  + "</tr> "
			    	  );
		      while(rs.next()){
		    	  int user_id=rs.getInt("user_id"); 
		    	  String first_name =rs.getString("firstname");
		    	  String last_name=rs.getString("lastname");
		    	  String user_email=rs.getString("email"); 
		    	  String user_phone_no=rs.getString("contactnumber"); 
		    	 ;  
		    	//String user_category=rs.getString("user_category");
		    	  
		    	  
		    	  
		    	  out.println(
		    	  ""
		    	  + "<tr>" 
		    	  + "<td>" +user_id+ "</td>"
		    	  + "<td>" +first_name+ "</td>"
		    	  + "<td>" +last_name+ "</td>"
		    	  + "<td>" +user_email+ "</td>"
		    	  + "<td>" +user_phone_no+ "</td>"
		    	 
		    	  
		    	  
		    	  + "</tr>"
		    	  );
		    	    
		      }
		      
		      out.println("</table>");
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
