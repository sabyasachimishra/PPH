<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%	
  if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%>  
<form action="processupdatepharmacyfee.jsp" method="get">
<table>
<tr><td>Patient ID:</td><td><input type="text" name="id" value="Enter Patient Id"></td></tr>
<tr><td>FEE:</td><td><input type="text" name="fee" value="Enter Fee"></td></tr>
<tr><td><input type="submit" name="sub" value="OK"></td></tr>
</table>
</form>
</body>
</html>