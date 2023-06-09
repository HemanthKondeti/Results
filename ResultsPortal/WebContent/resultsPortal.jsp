<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
h1,h4
{
font-family: sans-serif;
font-weight: bold;
text-shadow: 2px 1px orange;
}
fieldset
{
  border: 3px solid black;
}
#img
{
  background-image: url("header.jpg");
  background-size: 100% 220px;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Welcome To Results Portal</title>
</head>
<body style="margin:0px;padding: 0px;overflow: hidden;">
<form action="RetriveStudentResult.jsp">
<div style="width:100%;height:220px;" id="img">
</div>
<marquee scrollamount="10" direction="left" style="font-size:30px;font-weight: bold;color: red">In View Of College Opening,Results Portal Remains Open</marquee>
<center>
<h1>Welcome To Examination Section</h1>
<fieldset style="width:300px;height:325px;margin-top:-12px">
<h1 style="text-decoration: underline;">Login</h1>
<h2>Enter Pin Number</h2>
<input placeholder="Pin Number" name="pin" style="width: 200px;height: 30px;text-align: center;border: 3px solid black;font-size: 15px;font-weight: bold;">
<h1 style="color: red;font-size: 15px">${param.msg}</h1>
<h2>Enter Semester</h2>
<input placeholder="Enter Semester" name="sem" style="width: 200px;height: 30px;text-align: center;border: 3px solid black;font-size: 15px;font-weight: bold;"><br><br>
<input type="submit" value="Login" style="border: 2px solid black;">
</fieldset>
</center><br>
<div style="width:100%;height:20px;background-color: gray;font-weight: bold;margin-bottom: 20px"><center>All Rights Reserved By Examination Section</center></div>
</form>
</body>
</html>