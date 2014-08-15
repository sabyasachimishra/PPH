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
		 PreparedStatement ps = null;
		 ResultSet rs=null;
		 Statement statement=null;
		String pid=request.getParameter("pid");
		String did=request.getParameter("did");
		int q=Integer.parseInt(request.getParameter("q"));
		String rec_id=null;
		int eq=0;
		
		String t3=null;
		 DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		   //get current date time with Date()
		   Date date = new Date();
		   
	       String t1=dateFormat.format(date);
	   	
			try
	   {

	       Class.forName("com.ibm.db2.jcc.DB2Driver");
	       con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
	 
	  
	        statement = con.createStatement();
	        rs = statement.executeQuery("SELECT RECORD_ID FROM SAIRAM.HEALTH_RECORD where PATIENT_ID='"+pid+"'");

	        while ( rs.next() ) {
	             rec_id=rs.getString(1); 
	       
				  
	        }
	        rs.close();
	    } catch (SQLException sqle) {
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
			if(rec_id!=null)
			{
				
		
		
		try
   {

       Class.forName("com.ibm.db2.jcc.DB2Driver");
       con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
 
  
        statement = con.createStatement();
        rs = statement.executeQuery("select count(*) from sairam.issue_drug");


        while ( rs.next() ) {
           
             t3="is"+(Integer.parseInt(rs.getString(1))+1); 
       out.println(t3+'\n');
			  
        }
       rs.close();
    } catch (SQLException sqle) {
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
		 
		  
		        statement = con.createStatement();
		        rs = statement.executeQuery("select quantity from sairam.drug");
		        out.println("Goodbye after eq!");

		        while ( rs.next() ) {
		           
		             eq=rs.getInt(1); 
		       
		             out.println("HIII"+eq);
		        }
		       rs.close();
		    } catch (SQLException sqle) {
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
}	
			
			if(eq>=q)
			{
			try
			    {
			         Class.forName("com.ibm.db2.jcc.DB2Driver");
			         con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
			   
			         String sql;
			         sql="insert into sairam.issue_drug values(?,?,?,?,?)";
			         ps = con.prepareStatement(sql);
			       	 statement  = con.createStatement();
			        
			         ps.setString(1,t3);
			         ps.setString(2,did);
			         ps.setInt(3,q);
			         ps.setString(4,rec_id);
			         ps.setString(5,t1);
			         ps.executeUpdate();
			         out.println("Goodbye! after insert");
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
			try
			   {
			        Class.forName("com.ibm.db2.jcc.DB2Driver");
			        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
			  
			        String sql;
			       sql="UPDATE SAIRAM.DRUG SET QUANTITY='"+(eq-q)+"' WHERE DRUG_ID='"+did+"'";
			       statement = con.createStatement();
			       ps = con.prepareStatement(sql);
			       ps.executeUpdate();
			       out.println("Drug updated");
			    
			    } catch (SQLException sqle) {
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
			}
			else
			{
				out.println("Drug not present");
			}
			 	
		
%>

</body>
</html>
