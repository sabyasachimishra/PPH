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
    
		String did=request.getParameter("did");
		String dname=request.getParameter("dname");
		String cname=request.getParameter("cname");
		String bname=request.getParameter("bname");
		String comp=request.getParameter("comp");
		String ad=request.getParameter("ad");
		String am=request.getParameter("am");
		String ay=request.getParameter("ay");
		String em=request.getParameter("em");
		String ey=request.getParameter("ey");
		String ppu=request.getParameter("ppu");
		String q=request.getParameter("q");
		String adate=ad+'/'+am+'/'+ay;
		String edate=em+'/'+ey;
   try
			    {
			         Class.forName("com.ibm.db2.jcc.DB2Driver");
			         con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
			   
			         String sql;
			         sql="insert into sairam.drug values(?,?,?,?,?,?,?,?,?)";
			         ps = con.prepareStatement(sql);
			       	 statement  = con.createStatement();
			        
			         ps.setString(1,did);
			         ps.setString(2,dname);
			         ps.setString(3,cname);
			         ps.setString(4,bname);
			         ps.setString(5,comp);
			         ps.setString(6,adate);
			         ps.setString(7,edate);
			         ps.setString(8,ppu);
			         ps.setString(9,q);
      
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
