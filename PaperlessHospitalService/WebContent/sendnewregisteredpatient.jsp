<html>
<head>
<title>update incoming patient list</title>
</head>
<body>
<%
		if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%>
NEW REGISTERED PATIENT TO BE SENT TO RECEPTION<br/>
<hr/>
<br/> 
<form action="updatenewregisteredpatient.jsp" method="get">
Enter Registration  No:<input type= "text" name ="regid"  "/><br/>
<input type="submit"  size="5"  name="button" value="SEND"/> 
</form>
</body>
</html>