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
<form action="processdeletedrug.jsp" method="get">
ID: <input type="text"  size="25" name="id" value="Ener The drug Id" onclick="if(this.value=='Ener The drug Id'){this.value='';}"
 />	 <br/>

		
<input type="submit"  size="5"  name="button" value="submit"/> 
</form>
</body>
</html>