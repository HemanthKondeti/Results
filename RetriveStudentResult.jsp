<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Swarnandhra Results</title>
<style>
table,td
{
border: 3px solid black;
font-size: 20px;
}
h1,h4,h2
{
font-family: sans-serif;
font-weight: bold;
text-shadow: 2px 1px orange;
}
#img
{
  background-image: url("header.jpg");
  background-size: 100% 210px;
}
</style>
</head>
<body style="margin: 0px;padding: 0px;overflow: hidden;">
<%
String pinnum=request.getParameter("pin");
String semes=request.getParameter("sem");
String url="jdbc:mysql://localhost:3306?user=root&password=12345";
String query="select * from results.semester2 where Rollno=? and Semester=?"; 
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection connection =DriverManager.getConnection(url);
java.sql.PreparedStatement ps=connection.prepareStatement(query);
ps.setString(1,pinnum);
ps.setString(2,semes);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
  String rollNo=rs.getString("Rollno");
  String sub1=rs.getString("Subject1");
  String grade1=rs.getString("Grade-1");
  String sub2=rs.getString("Subject2");
  String grade2=rs.getString("Grade-2");
  String sub3=rs.getString("Subject3");
  String grade3=rs.getString("Grade-3");
  String sub4=rs.getString("Subject4");
  String grade4=rs.getString("Grade-4");
  String sub5=rs.getString("Subject5");
  String grade5=rs.getString("Grade-5");
  String sgpa=rs.getString("SGPA");
  String cgpa=rs.getString("CGPA");
  String sp=rs.getString("SubjectsPassed");
  String semester=rs.getString("Semester");
  int snum=rs.getInt("S.no");
  String branch=rs.getString("Branch");
  String year=rs.getString("Year");
  String name=rs.getString("Name");
  %>
  <div style="width:100%;height:210px;" id="img">
</div>
<center style="margin-top: -10px">
<h2>Student Name :<%=name%></h2>
<h2>Pin Number :<%=rollNo%></h2>
<h2>Year :<%=year%></h2>
<h2>Semester :<%=semester%></h2>
<h2>Branch :<%=branch%></h2>
<table>
<tr style="background-color: yellow;font-weight: bold;">
<td style="font-weight: bold;">S.No</td>
<td style="font-weight: bold;">Subject</td>
<td style="font-weight: bold;">Grade</td>
</tr>
<tr style="font-weight: bold;">
<td style="font-weight: bold;">1</td>
<td style="font-weight: bold;"><%=sub1%></td>
<td style="font-weight: bold;"><%=grade1%></td>
</tr>
<tr style="font-weight: bold;">
<td style="font-weight: bold;">2</td>
<td style="font-weight: bold;"><%=sub2%></td>
<td style="font-weight: bold;"><%=grade2%></td>
</tr>
<tr style="font-weight: bold;">
<td style="font-weight: bold;">3</td>
<td style="font-weight: bold;"><%=sub3%></td>
<td style="font-weight: bold;"><%=grade3%></td>
</tr>
<tr style="font-weight: bold;">
<td style="font-weight: bold;">4</td>
<td style="font-weight: bold;"><%=sub4%></td>
<td style="font-weight: bold;"><%=grade4%></td>
</tr>
<tr style="font-weight: bold;">
<td style="font-weight: bold;">5</td>
<td style="font-weight: bold;"><%=sub5%></td>
<td style="font-weight: bold;"><%=grade5%></td>
</tr>
<tr>
<td style="background-color: wheat;font-weight: bold;">SGPA</td>
<td style="background-color: wheat;font-weight: bold;"><%=sgpa%></td>
</tr>
<tr>
<td style="background-color: wheat;font-weight: bold;">CGPA</td>
<td style="background-color: wheat;font-weight: bold;"><%=cgpa%></td>
</tr>
<tr>
<td style="background-color: wheat;font-weight: bold;">Subjects Passed</td>
<td style="background-color: wheat;font-weight: bold;"><%=sp%></td>
</tr>
</table>
</center>
<%
}
else
{
	%>
	<jsp:forward page="resultsPortal.jsp">
	<jsp:param value="Invalid Roll No" name="msg"/>
	</jsp:forward>	
	<% 
}
  connection.close();
	%>
</body>
</html>