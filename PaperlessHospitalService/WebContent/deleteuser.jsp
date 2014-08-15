<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<body>
<%
		if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%> 
<form action="processdeleteuser.jsp" method="get">

 <table>

 <tr><td>User Id</td><td><input type="text" name="id" size="20" /></td></tr></br>

 
<tr><td><input type="submit" value="save changes" size="5" /></td></tr>
</table>
</form>
</body>
</html>