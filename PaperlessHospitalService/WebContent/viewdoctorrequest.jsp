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
<form action="doctorrequest.jsp" method="get">
<table><tr><td>
<input type="text"  size="25"  name="d1" value="Enter ID" onclick="if(this.value=='Enter ID'){this.value='';}"/></td> 
<td><input type="submit"  size="5"  name="button" value="submit"/></td></tr> 
</table></form>
</body>
</html>