<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
tr{background-color:lightgreen; text-align:center;}
td{background-color:#cff;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%	
  if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%>  
		
		

<%@ page language="java" import="java.util.*,java.text.*,java.util.Date,java.sql.*, java.io.*" %>
<%
String t1=request.getParameter("d1");
    Connection con = null;
Statement stmt = null;
try
   {
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
  
        String sql;
        sql="SELECT * FROM SAIRAM.FEEDBACK";
        //ps.setString(1,t3);
        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
  %>  
        <table><tr><th>Nursing</th><th>DOCTOR</th><th>HYGEINITY</th><th>FOOD</th><th>COMFORT</th><th>ADDMISSION PROCESS</th><th>ADDMISSION PROCESS</th><th>PRICE_PER_UNIT</th><th>ACCOMODATION</th><th>STAFF COURTESY</th><th>DRUG FACILITY</th><th>INVESTIGATION</th><th>BATCH_NAME</th><th>COMPOSITION</th><th>ACCESSIBILTY TO VARIOUS DEPT</th><th>LIKING SERVICE</th><th>SUGGESTION</th><th>DATE TIME</th><th>NAME</th><th>EMAIL</th></tr>
<%
        while ( rs.next() ) {
            out.println("<tr>\n<td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td><td>" + rs.getString(7) + "</td><td>" + rs.getString(8) + "</td><td>" + rs.getString(9) + "</td><td>" + rs.getString(10) + "</td><td>" + rs.getString(11) + "</td><td>" + rs.getString(12) + "</td><td>" + rs.getString(13) + "</td><td>" + rs.getString(14) + "</td><td>" + rs.getString(15) + "</td><td>" + rs.getString(16) + "</td><td>" + rs.getString(17) + "</td></tr>");
         
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
</table>
</body>
</html>