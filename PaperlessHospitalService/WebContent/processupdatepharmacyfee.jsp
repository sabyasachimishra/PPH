<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JDBC Example for People Table</title>
</head>
<body>
<%@ page language="java" import="java.util.*,java.text.*,java.util.Date,java.sql.*, java.io.*" %>
<%
Connection con = null;
Statement statement = null;
ResultSet rs = null;
PreparedStatement ps = null;
int pfee=0;
		String id=request.getParameter("id");
		int fee=Integer.parseInt(request.getParameter("fee"));
		try
		   {
		        Class.forName("com.ibm.db2.jcc.DB2Driver");
		        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
		  
		        String sql;
		        sql="select pharmacy from SAIRAM.BILLS  where PATIENT_ID='"+id+"'";
		       
		        
		        statement = con.createStatement();
		         rs = statement.executeQuery(sql);
		        %>
		       
		<%
		        while ( rs.next() ) {
		             pfee=rs.getInt(1) ;
		         
		        }
		        rs.close();
		    }  catch (SQLException sqle) {
		        out.println(sqle.getMessage());
		    } catch (Exception e) {
		        out.println(e.getMessage());
		    } finally {
		        try {
		            if ( con != null ) {
		                con.close();
		            }
		        } catch (SQLException sqle) {
		            out.println(sqle.getMessage());
		        }
		    }
		
   try
			    {
			         Class.forName("com.ibm.db2.jcc.DB2Driver");
			         con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
			   
			         String sql;
			         sql="update sairam.bills set pharmacy="+(fee+pfee)+" where PATIENT_ID='"+id+"'";
			         ps = con.prepareStatement(sql);
			       	 statement  = con.createStatement();
			        
			        
      
			   ps.executeUpdate();
			   out.println("Goodbye!");
			 } 
			    
			    catch(SQLException se){
			 	      //Handle errors for JDBC
			 	      se.printStackTrace();
			 	   }catch(Exception e){
			 	      //Handle errors for Class.forName
			 	      e.printStackTrace();
			 	   }finally {
			 	        try {
			 	            if(rs != null)
			 	                rs.close();
			 	            if(statement!= null)
			 	            	statement.close();
			 	            if(ps != null)
			 	                ps.close();
			 	            if(con != null)
			 	                con.close();
			 	        } catch (SQLException e) {}
			 	   }
			 	  
		
%>

</body>
</html>
