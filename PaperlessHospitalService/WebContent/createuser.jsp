<body>
   NEW USER<hr/>
<form action="processnewuser.jsp" method="get">
<%
		if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%>
<table>
      <tr><td>Username</td><td><input type="text" size="25" name="un" title="Enter your USER NAME here"/></td></tr><br/>
	  <tr><td>Password</td><td><input type="password"  size="25" name="pw" title="Enter your Password here" /></td></tr>	 <br/>
	 <tr><td>FIRST NAME</td><td><input type="text"  size="25" name="fn" title="Enter your  first name  here" /></td></tr>	 <br/>
	 <tr><td>   Last name</td><td><input type="type" name="ln" size="50"  title="Enter your last name here"/></td></tr>	 <br/>	     
      <tr><td> CLIENT ID:	</td><td> 
	    <select name="cid">	  
	 <option  value="patient">Patient</option>
	  <option  value="doctor">Doctor</option>
	  <option  value="admittingclerk">Admitting Clerk</option>
	  <option  value="deptadmin">Department Admin</option>
	  <option  value="receptionist">Receptionist</option>
	  <option  value="billingstaff">Billing Staff</option>
	  <option  value="pathologist">Pathologist</option>
	  <option  value="radiologist">Radiologist</option>
	  <option  value="pharmacy">Pharmacy</option>
		<option  value="administrator">Administrator</option>
	  </select></td></tr><br/>
	 <tr><td>  User id</td><td> <input type="type" name="uid" size="50"  title="Enter your last name here"/></td></tr><br/>	
	   <tr><td><input type="submit"  size="5"  name="button" value="submit"/> </td></tr><br/>
	   </table>
	   </form>
	   </body>
	   </html>