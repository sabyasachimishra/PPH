<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
  <style>
  #tbl{position:absolute; left : 0px; top : 0px;}
  </style>
  <script>
  function show()
  {
   document.all.main.style.height="300px";
   document.all.tbl.style.visibility="visible";
  }
  </script>
  </head>
  <body>	   
<form action="updateprofilename.jsp" method="get">
	   		 <%	
  if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%>  
	   		 <table id="tbl">
			 		<tr><td>First Name</td><td><input type="text" name="firstname"></input></td></tr>
			 	
			 		<tr><td>Last Name</td><td><input type="text" name="lastname"></input></td></tr>
			 		<tr><td><input type="submit"></input></td></tr>
			 </table>
</form>
</body>

</html>