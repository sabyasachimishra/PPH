<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <style>
	#mainbox{position:absolute;left : 100px;}
	#box1{position:absolute; left : 0px;top:100px;background-color:lightgrey;
	width : 600px;height:60px;cursor:pointer;}
	#box1:hover{background-color:lightgreen; }
	#box2:hover{background-color:lightgreen; }
	#box3:hover{background-color:lightgreen; }
	#box2{position:absolute; left : 0px;top:160px;background-color:lightgrey;
	width : 600px;height:60px;cursor:pointer;}
	#box3{position:absolute; left : 0px;top:220px;background-color:lightgrey;
	width : 600px;height:60px;cursor:pointer;}
	#frame1{width: 300px;height:150px;position:absolute; top:60px; left:150px;visibility:hidden;border:none;}
	#frame2{width: 330px;height:150px;position:absolute; top:60px; left:150px;visibility:hidden;border:none;}
	#frame3{width: 300px;height:150px;position:absolute; top:60px; left:150px;visibility:hidden;border:none;}
	#line1{position:absolute; left:15px; top:0px;}
	#line12{position:absolute; left:15px; top:0px;}
	#line13{position:absolute; left:15px; top:0px;}
	#line2{position:absolute; right:15px; top:0px;}
	#line22{position:absolute; right:15px; top:0px;}
	#line23{position:absolute; right:15px; top:0px;}
	#un{position:absolute; left:15px; top:20px;}
	#un2{position:absolute; left:15px; top:20px;}
	#un3{position:absolute; left:15px; top:20px;}
	</style>
	<script>
	var t=0;
	var l=0;
	var m=0;
	
	function rg()
	{if(t==0){
     document.all.frame2.style.visibility="hidden";
	 document.all.box3.style.top="220px";
	 document.all.box2.style.height="60px";
	 l=0;
	 document.all.frame1.style.visibility="visible";
	 document.all.box2.style.top="290px";
	 document.all.box3.style.top="350px";
	 document.all.box1.style.height="240px";
	 t=1;
	 document.all.frame3.style.visibility="hidden";
	 document.all.box3.style.height="60px";
	 m=0;
	 }
	 else{
	 document.all.frame1.style.visibility="hidden";
	 document.all.box2.style.top="160px";
	 document.all.box3.style.top="220px";
	 document.all.box1.style.height="60px";
	 t=0;
	 }}
	 
	 function oly1(){
	 document.all.frame1.style.visibility="hidden";
	 document.all.box2.style.top="160px";
	 document.all.box3.style.top="220px";
	 document.all.box1.style.height="60px";
	 t=0;}
	 
	 function rg2()
	 {
	 if(l==0){
	 document.all.frame1.style.visibility="hidden";
	 document.all.box2.style.top="160px";
	 document.all.box3.style.top="220px";
	 document.all.box1.style.height="60px";
	 t=0;
	 document.all.frame2.style.visibility="visible";
	 document.all.box3.style.top="370px";
	 document.all.box2.style.height="210px";
	 l=1;
	 document.all.frame3.style.visibility="hidden";
	 document.all.box3.style.height="60px";
	 m=0;
	 
	 }
	 else{
	 document.all.frame2.style.visibility="hidden";
	 document.all.box3.style.top="220px";
	 document.all.box2.style.height="60px";
	 l=0;
	 }}
	 function rg3()
	{if(m==0){
     document.all.frame2.style.visibility="hidden";
	 document.all.box3.style.top="220px";
	 document.all.box2.style.height="60px";
	 l=0;
	 document.all.frame1.style.visibility="hidden";
	 document.all.box2.style.top="160px";
	 document.all.box3.style.top="220px";
	 document.all.box1.style.height="60px";
	 t=0;
	 document.all.frame3.style.visibility="visible";
	 document.all.box3.style.height="210px";
	 m=1;
	 }
	 else{
	 document.all.frame3.style.visibility="hidden";
	 document.all.box3.style.height="60px";
	 m=0;
	 }}
	</script>
	</head>
<body>
<%
		if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%>

<h2 align="center">ACCOUNT SETTINGS</h2>
  <hr>
  <div id="mainbox">
  <div>
  	   <div id="box1" onclick="rg()">
  	   <p id="line1">Username:</p>
  	   <p id="un">Your username</p>
  	   <p id="line2">Edit</p>
  	   <iframe src="https://localhost:9443/PaperlessHospitalService/accname.jsp" id="frame1"></iframe></div>
  </div>
    <div>
  	   <div id="box2" onclick="rg2()">
  	   <p id="line12">Password:</p>
  	   <p id="un2"></p>
  	   <p id="line22">Edit</p>
  	   <iframe src="https://localhost:9443/PaperlessHospitalService/accpassword.jsp" id="frame2"></iframe></div>
  </div>
    <div>
  	   <div id="box3" onclick="rg3()">
  	   <p id="line13">Email:</p>
  	   <p id="un3">Your Email</p>
  	   <p id="line23">Edit</p>
  	   <iframe src="https://localhost:9443/PaperlessHospitalService/accemail.jsp" id="frame3"></iframe></div>
  </div>
  </div>
  </body>
</html>