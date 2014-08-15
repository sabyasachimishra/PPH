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
<%@ page language="java" import="java.sql.*, java.io.*" %>
<%
    Connection con = null;
		String t1=request.getParameter("id");
		
		try
   {

       Class.forName("com.ibm.db2.jcc.DB2Driver");
       con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
 
  
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("SELECT registration_id,date_time,first_name,middle_name,last_name,sex FROM REGISTRATION where registration_id like '"+t1+"%'");
  
%>
        <table border="1"><tr><th>ID</th><th>DATE</th><th>NAME</th><th>SEX</th>
<%
        while ( rs.next() ) {
            out.println("<tr>\n<td>" + rs.getString(1) + "</td>");
            out.println("<td>" + rs.getString(2) + "</td>");
			 out.println("<td>" + rs.getString(3) +rs.getString(4) + rs.getString(5) +"</td>");
			   out.println("<td>" + rs.getString(6) + "</td>\n</tr>");
			  
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
%>
</tr>
</table>
</body>
</html>
