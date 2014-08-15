   <%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="LoginPackage.UserBean"
   %>
 
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

   <html>

      <head>
         <meta http-equiv="Content-Type" 
            content="text/html; charset=windows-1256">
         <title>   User Logged Successfully   </title>
         <style>
body{ background-image:url("rr.jpg");}
#container
{ position : relative; left : 150px; width:1024px; height:768px;
background-image:url("bggg.jpg");box-shadow: 0px 2px 3px 3px black;}
#box1
{ position : absolute; left : 0px;top : 0px;width : 1024px;
height: 50px;background-color : lightgreen;}
#box2
{ position : absolute; left : 0px;top : 50px;width : 1024px;
height: 30px;background-color : lightgreen;}
#welcome{ position : absolute; top : -10px; right : 300px;}
#username{ position : absolute; top : -17px;right : 200px;padding : 5px;}
#username:hover
{background-color:green;}
#hospitalname{ font-size:20px;}
#hospitallogo{ position : absolute;width:200px; height:150px;left:200px;top:-50px;}
#arw{ position : absolute; right : 0px;top : 0px;height : 30px;}
#arw:hover
{background-color:green;}
#home{position : absolute; left : 20px; top : -20px;}
#sidebox1{position :absolute; left : 0px; top : 80px; width : 250px; height : 500px;}
#profilepic{position : absolute; left: 25px; top : 25px;width:200px; height : 200px;}
#side1{position :absolute; left : 250px; top : 0px; height : 500px;}
#sidebutton1{ padding : 5px; background-color : lightgreen;width:175px;font-size: 20px;position  :absolute; left : 25px; top : 250px;}
#sidebutton1:hover
{-webkit-border-radius: 0px 20px 20px 0px;box-shadow:2px 0px 2px black;}
#sidebutton2{  top : 290px;padding : 5px; background-color : lightgreen;width:175px;font-size: 20px;position  :absolute; left : 25px;}
#sidebutton2:hover
{box-shadow:2px 0px 2px black;-webkit-border-radius: 0px 20px 20px 0px;}
#sidebutton3{  top : 330px;padding : 5px; background-color : lightgreen;width:175px;font-size: 20px;position  :absolute; left : 25px;}
#sidebutton3:hover
{box-shadow:2px 0px 2px black;-webkit-border-radius: 0px 20px 20px 0px;}
#sidebutton4{  top : 370px;padding : 5px; background-color : lightgreen;width:175px;font-size: 20px;position  :absolute; left : 25px;}
#sidebutton4:hover
{box-shadow:2px 0px 2px black;-webkit-border-radius: 0px 20px 20px 0px;}
#sidebutton5{  top : 410px;padding : 5px; background-color : lightgreen;width:175px;font-size: 20px;position  :absolute; left : 25px;}
#sidebutton5:hover
{box-shadow:2px 0px 2px black;-webkit-border-radius: 0px 20px 20px 0px;}
#upbox1{ position :absolute; left : 280px; top : 80px; width : 600px; height : 50px;}
#upbutton1{ position : absolute; left : 0px; top : 10px; padding : 10px 30px 10px 30px;-webkit-border-radius: 5px; background-color : lightgreen;}
#upbutton1:hover{top : 5px;}
#upbutton2{ position : absolute; left : 120px; top : 10px;-webkit-border-radius: 5px; padding : 10px 30px 10px 30px; background-color : lightgreen;}
#upbutton2:hover{top : 5px;}
#upbutton3{ position : absolute;-webkit-border-radius: 5px; left : 240px; top : 10px; padding : 10px 30px 10px 30px; background-color : lightgreen;}
#upbutton3:hover{top : 5px;}
#upbutton4{ -webkit-border-radius: 5px;position : absolute; left : 360px; top : 10px; padding : 10px 30px 10px 30px; background-color : lightgreen;}
#upbutton4:hover{top : 5px;}
#upbutton5{  -webkit-border-radius: 5px;position : absolute; left : 480px; top : 10px; padding : 10px 30px 10px 30px; background-color : lightgreen;}
#upbutton5:hover{top : 5px;}
#lowbox1{position : absolute; bottom:0px; width : 200px; height : 75px; right : 400px;}
#perfect9logo{position : absolute; width : 250px; height:100px;right : -80px;}
#bottom{ position:absolute;bottom : -5px;left:-50px; font-size:15px;color : grey;}
#dropbox1{visibility:hidden;position : absolute; right : 0px; width : 150px; height : 150px;top : 80px;}
#dropbutton1{position:absolute; left : 0px;top : -16px;width:150px;max-width:150px; max-height: 30px;border:dotted 2px black;padding:10px 0px 10px 0px;}
#dropbutton2{position:absolute; left : 0px;top : 33px;width:150px;max-width:150px; max-height: 30px;border:dotted 2px black;padding:10px 0px 10px 0px;}
#dropbutton3{position:absolute; left : 0px;top : 82px;width:150px;max-width:150px; max-height: 30px;border:dotted 2px black;padding:10px 0px 10px 0px;}
#dropbutton3:hover
{background-color:green;}
#dropbutton2:hover
{background-color:green;}
#dropbutton1:hover
{background-color:green;}
</style>
<script>
var a=0;
function show()
{
if(a==0)
{document.all.dropbox1.style.visibility="visible";a=1;}
else
{document.all.dropbox1.style.visibility="hidden";a=0;}
}

</script>
      </head>
	
      <body>
<%@ page language="java" import="java.util.*,java.sql.*, java.io.*,javax.servlet.http.HttpSession,LoginPackage.UserBean" %>
         
         <div id="container">
	<div id="box1">
		<center><p id="hospitalname">Hospital Name</p></center>
		<img src="logo11.png" id="hospitallogo">
	</div>
	<div id="box2">
		<img id="home" src="home1.png">
		
		<p id="welcome">Welcome&nbsp<%=session.getAttribute("currentSessionUserfname")%> <%=" "%><%=session.getAttribute("currentSessionUserlname")%></p>
		<%
		if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("http://localhost:9999/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%>
		
		
		<img src="arrw.png" id="arw" onclick="show()">
	</div>    
<div id="sidebox1">
		<img id="profilepic" src="../ad123.jpg">
		<hr id="side1">
		<p id="sidebutton1" onClick=location.href="3.html">Button 1</p>
		<p id="sidebutton2" onClick="this.style.background='green';">Button 2</p>
		<p id="sidebutton3" onClick="this.style.background='green';">Button 3</p>
		<p id="sidebutton4" onClick="this.style.background='green';">Button 4</p>
		<p id="sidebutton5" onClick="this.style.background='green';">Button 5</p>
	</div>
	<div id="upbox1">
		<p id="upbutton1" onClick="this.style.background='green';">Button1</p>
		<p id="upbutton2" onClick="this.style.background='green';">Button2</p>
		<p id="upbutton3"onClick="this.style.background='green';">Button3</p>
		<p id="upbutton4"onClick="this.style.background='green';">Button4</p>
		<p id="upbutton5"onClick="this.style.background='green';">Button5</p>
	</div>
	<div id="dropbox1">
	<center><p id="dropbutton1" onClick=location.href="accountsetting.jsp">Account Setting</p></center>
		
		<center><p id="dropbutton2" onClick=location.href="signout.jsp">Sign Out</p></center>
		
	</div>
	<div id="lowbox1">
		<img id="perfect9logo" src="logop.png">
		<p id="bottom">POWERED BY:</p>
	</div>
</div>

      </body>
	
   </html> 