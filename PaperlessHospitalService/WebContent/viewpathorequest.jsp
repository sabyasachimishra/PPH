<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
tr{background-color:lightgreen; text-align:center;}
td{background-color:#cff;}
</style>
<title>JDBC Example for People Table</title>
</head>
<body>
<%@ page language="java" import="java.util.*,java.text.*,java.util.Date,java.sql.*, java.io.*" %>
<%
    Connection con = null;
    String r="Req";
    String t3=null;
    		try
   {

       Class.forName("com.ibm.db2.jcc.DB2Driver");
       con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
 
  
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("select count(*) from sairam.request_to_pathology");
  
%>
        
<%

        while ( rs.next() ) {
             t3="Req"+(Integer.parseInt(rs.getString(1))); 
          
			  
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
    %>
    <%
		try
   {

       Class.forName("com.ibm.db2.jcc.DB2Driver");
       con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
 
  
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("select * from sairam.request_to_pathology where REQUEST_ID='"+t3+"'");
  
%>
 <table border="1"><tr><th>Request_ID</th><th>Investigation Id</th><th>Patient Id</th><th>Date</th></tr>       
<%

        while ( rs.next() ) {
              out.println("<tr>\n<td>" + rs.getString(1) +"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>" + rs.getString(4) + "</td></tr>");
          
			  
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
    %>
    </table>
    </body>
    </html>