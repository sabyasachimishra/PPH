<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" import="java.util.*,java.text.*,java.util.Date,java.sql.*, java.io.*" %>
<%
    Connection con = null;
Statement stmt = null;
ResultSet rs = null;

       

	   
     
     String t2=request.getParameter("patid");
     String im_id=null;
     try
     {

         Class.forName("com.ibm.db2.jcc.DB2Driver");
         con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
   
    
          Statement statement = con.createStatement();
           rs = statement.executeQuery("SELECT OP_ID FROM SAIRAM.OPERATION_DONE where PATIENT_ID='"+t2+"'");
    
 
          
  

          while ( rs.next() ) {
               im_id=rs.getString(1); 
            
  			  
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
  		if(im_id!=null)
  		{
  			 PreparedStatement ps = null;
  			 
  			 Statement statement=null;
  		   try
  			    {
  			 Class.forName("com.ibm.db2.jcc.DB2Driver");
  	        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
  	  
  	        String sql;
  	        sql="select operation_id,operation_name,description,price,patient_id from SAIRAM.OPERATION inner join SAIRAM.OPERATION_DONE on operation_id=op_id";
  	        //ps.setString(1,t3);
  	        stmt = con.createStatement();
  	         rs = stmt.executeQuery(sql);
%>      
  	        <table border="1"><tr><th>OPERATION</th><th>OPERATION_NAME</th><th>DESCRIPTION</th><th>PRICE</th><th>PATIENT_ID</th></tr>
  	<%
  	        while ( rs.next() ) {
  	            out.println("<tr>\n<td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td>></tr>");
  	         
  	        }
  	        rs.close();
  	    } catch (IOException ioe) {
  	        out.println(ioe.getMessage());
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
  	%>
  	</table>
</body>
</html>