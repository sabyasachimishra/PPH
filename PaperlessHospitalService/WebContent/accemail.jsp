<!DOCTYPE html>
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
  <%	
  if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%>   
	   <form id="fm1">
	   		 <table id="tbl">
			 		<tr><td>Primary Email</td><td><input type="text" name="primary"></input></td></tr>
			 		<tr><td>Secondary Email</td><td><input type="text" name="secondary"></input></td></tr>
			 		<!--<tr><td>Last Name</td><td><input type="text"></input></td></tr>-->
			 		<tr><td><input type="submit"></input></td></tr>
			 </table>
	   </form> 
  </body>
</html>