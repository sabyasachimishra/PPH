<html>
<head>
<style>
#frame1{position :absolute; left:260px; top : 100px;}
#s1{ text-decoration : none;color:black;width : 100px;}
#s2{ text-decoration : none;color:black;}
#s3{ text-decoration : none;color:black;}
#s4{ text-decoration : none;color:black;}
#s5{ text-decoration : none;color:black;}
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
#set{z-index : 2;position : absolute; top : 50px; left : 650px; width : 200px;}
#welcome{ position : absolute; top : -10px; left:0px;}
#username{ position : absolute; top : -15px;left : 70px;padding : 5px;}
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
#sidebutton1{ padding : 5px; background-color : lightgreen;width:175px;font-size: 13px;position  :absolute; left : 25px; top : 250px;}
#sidebutton1:hover
{-webkit-border-radius: 0px 20px 20px 0px;box-shadow:2px 0px 2px black;}
#sidebutton2{  top : 290px;padding : 5px; background-color : lightgreen;width:175px;font-size: 13px;position  :absolute; left : 25px;}
#sidebutton2:hover
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

		<%	
  if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%>  
<div id="container">
<div id="set">
<p id="welcome">Welcome</p>
		<p id="username"><%=session.getAttribute("currentSessionUserfname")%> <%=" "%><%=session.getAttribute("currentSessionUserlname")%></p></p>
		
</div>

	<div id="box1">
		<center><p id="hospitalname">Hospital Name</p></center>
		<img src="logo11.png" id="hospitallogo">
	</div>
	<div id="box2">
		<img id="home" src="home1.png">
		
		<img src="arrw.png" id="arw" onclick="show()">
	</div>
	<div id="sidebox1">
		<img id="profilepic" src="<%=session.getAttribute("currentSessionUserId")%>.jpg">
		<hr id="side1">
		<p id="sidebutton1" ><a onClick="sidebutton1.style.background='green';sidebutton2.style.background='lightgreen';sidebutton3.style.background='lightgreen';sidebutton4.style.background='lightgreen';sidebutton5.style.background='lightgreen';" id="s1" href="viewinsurance.jsp" target="frame1">CHECK POLICY REQUEST</a></p>
		<p id="sidebutton2" ><a onClick="sidebutton2.style.background='green';sidebutton1.style.background='lightgreen';sidebutton3.style.background='lightgreen';sidebutton4.style.background='lightgreen';sidebutton5.style.background='lightgreen';" id="s2" href="validatepolicyrequest.jsp" target="frame1">VALIDATE POLICY REQUEST</a></p>
		
	</div>
	<!--<div id="upbox1">
		<p id="upbutton1" onClick="this.style.background='green';">Button1</p>
		<p id="upbutton2" onClick="this.style.background='green';">Button2</p>
		<p id="upbutton3"onClick="this.style.background='green';">Button3</p>
		<p id="upbutton4"onClick="this.style.background='green';">Button4</p>
		<p id="upbutton5"onClick="this.style.background='green';">Button5</p>
	</div>-->
	
	<iframe id="frame1" name="frame1" src="initialpage.html" width="750px" height="500px"></iframe>
	
	<div id="dropbox1">

				
		<center><p id="dropbutton1"><a onClick="sidebutton2.style.background='green';sidebutton1.style.background='lightgreen';sidebutton3.style.background='lightgreen';sidebutton4.style.background='lightgreen';sidebutton5.style.background='lightgreen';" id="s2" href="\\C:\Users\Sumit\Desktop\UI\profile.html" target="frame1">View Profile</a></p></center>

		<center><p id="dropbutton2"> <a onClick="sidebutton2.style.background='green';sidebutton1.style.background='lightgreen';sidebutton3.style.background='lightgreen';sidebutton4.style.background='lightgreen';sidebutton5.style.background='lightgreen';" id="s2" href="accountsetting.jsp" target="frame1">Account Setting</a></p></center>

		<center><p id="dropbutton3"><a onClick="sidebutton2.style.background='green';sidebutton1.style.background='lightgreen';sidebutton3.style.background='lightgreen';sidebutton4.style.background='lightgreen';sidebutton5.style.background='lightgreen';" id="s2" href="signout.jsp">Logout</a></p></center>
	</div>
	<div id="lowbox1">
		<img id="perfect9logo" src="logop.png">
		<p id="bottom">POWERED BY:</p>
	</div>
</div>

</body>
