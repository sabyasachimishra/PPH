<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.oo{text-decoration:none; color:black;}
#upbox1{ position :absolute; left : 30px; top : 80px; width : 600px; height : 50px;}
#upbutton1{ position : absolute; left : 0px; top : 10px; padding : 10px 30px 10px 30px;-webkit-border-radius: 5px; background-color : lightgreen;}
#upbutton1:hover{top : 5px;}
#upbutton2{ position : absolute; left : 135px; top : 10px;-webkit-border-radius: 5px; padding : 10px 30px 10px 30px; background-color : lightgreen;}
#upbutton2:hover{top : 5px;}
#upbutton3{ position : absolute;-webkit-border-radius: 5px; left : 275px; top : 10px; padding : 10px 30px 10px 30px; background-color : lightgreen;}
#upbutton3:hover{top : 5px;}
#upbutton4{ -webkit-border-radius: 5px;position : absolute; left : 399px; top : 10px; padding : 10px 30px 10px 30px; background-color : lightgreen;}
#upbutton4:hover{top : 5px;}
#upbutton5{  -webkit-border-radius: 5px;position : absolute; left : 524px; top : 10px; padding : 10px 30px 10px 30px; background-color : lightgreen;}
#upbutton5:hover{top : 5px;}
</style>
</head>
<body>
<%
		if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%>
<div id="upbox1">
		<p id="upbutton1"><a class="oo"  href="updateregistrationfee.jsp" target="frame1">Registration</a></p>
		<p id="upbutton2"><a class="oo" href="updateinvestigationfee.jsp" target="frame1">Investigation</a></p>
		<p id="upbutton3"><a class="oo" href="updatediagnosisfee.jsp" target="frame1">Diagnosis</a></p>
		<p id="upbutton4"><a class="oo" href="updatepharmacyfee.jsp" target="frame1">Pharmacy</a></p>
		<p id="upbutton5"><a class="oo" href="updatesecurityfee.jsp" target="frame1">Security</a></p>
		
	</div>
</body>
</html>