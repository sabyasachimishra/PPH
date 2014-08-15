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
		String pid=request.getParameter("patid");
		String iid=request.getParameter("inid");
		
		String t3=null;
		 DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		   //get current date time with Date()
		   Date date = new Date();
		   
	       String t1=dateFormat.format(date);
		
		
		try
   {

       Class.forName("com.ibm.db2.jcc.DB2Driver");
       con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
 
  
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("select count(*) from sairam.request_to_pathology");
  
%>
        
<%

        while ( rs.next() ) {
             t3="Req"+(Integer.parseInt(rs.getString(1))+1); 
          
			  
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
		if(t3!=null)
		{
			 PreparedStatement ps = null;
			 ResultSet rs=null;
			 Statement statement=null;
		   try
			    {
			         Class.forName("com.ibm.db2.jcc.DB2Driver");
			         con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
			   
			         String sql;
			         sql="insert into sairam.request_to_pathology values(?,?,?,?)";
			         ps = con.prepareStatement(sql);
			       	 statement  = con.createStatement();
			        out.println(t3);
			         ps.setString(1,t3);
			         ps.setString(2,iid);
			         ps.setString(3,pid);
			         ps.setString(4,t1);
			        ps.executeUpdate();
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
			 	   out.println("Goodbye!");
		}
%>

</body>
</html>
