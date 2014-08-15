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
<%@ page language="java" import="java.util.*,java.text.*,java.util.Date,java.sql.*, java.io.*" %>
<%	
  if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}
String t1=request.getParameter("d1");
    Connection con = null;
Statement stmt = null;

try
   {
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
  
        String sql;
        sql="select patient_id from SAIRAM.REQUEST_TO_DEPARTMENT  where sl_no=(select count(*) from SAIRAM.REQUEST_TO_DEPARTMENT where dept_id='"+t1+"')";
        PreparedStatement ps=null;
        //ps.setString(1,t3);
        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        %>
        <table><tr><th>PATIENT ID</th>
<%
        while ( rs.next() ) {
            out.println("<tr>\n<td>" + rs.getString(1) + "</td></tr>");
         
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

        