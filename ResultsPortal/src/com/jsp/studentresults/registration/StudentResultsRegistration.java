package com.jsp.studentresults.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.*;
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
@WebServlet("/StudentResultsRegistration")
public class StudentResultsRegistration extends GenericServlet {

	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String rollNo=request.getParameter("Rollno");
		String subject1=request.getParameter("Subject1");
		String grade1=request.getParameter("Grade-1");
		String subject2=request.getParameter("Subject2");
		String grade2=request.getParameter("Grade-2");
		String subject3=request.getParameter("Subject3");
		String grade3=request.getParameter("Grade-3");
		String subject4=request.getParameter("Subject4");
		String grade4=request.getParameter("Grade-4");
		String subject5=request.getParameter("Subject5");
		String grade5=request.getParameter("Grade-5");
		String sgpa=request.getParameter("SGPA");
		String cgpa=request.getParameter("CGPA");
		String subjectsPassed=request.getParameter("SubjectsPassed");
		String semester=request.getParameter("Semester");
		String temp1=request.getParameter("S.no");
		int sno=Integer.parseInt(temp1);
		String name=request.getParameter("Name");
		String branch=request.getParameter("Branch");
		String year=request.getParameter("Year");
		PrintWriter writer =response.getWriter();
		String url="jdbc:mysql://localhost:3306?user=root&password=12345";
		String query="insert into results.semester2 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection connection = DriverManager.getConnection(url);
			java.sql.PreparedStatement ps=connection.prepareStatement(query);
			ps.setString(1,rollNo);
			ps.setString(2,subject1);
			ps.setString(3,grade1);
			ps.setString(4,subject2);
			ps.setString(5,grade2);
			ps.setString(6,subject3);
			ps.setString(7,grade3);
			ps.setString(8,subject4);
			ps.setString(9,grade4);
			ps.setString(10,subject5);
			ps.setString(11,grade5);
			ps.setString(12,sgpa);
			ps.setString(13,cgpa);
			ps.setString(14,subjectsPassed);
			ps.setString(15,semester);
			ps.setInt(16,sno);
			ps.setString(17,name);
			ps.setString(18,branch);
			ps.setString(19,year);
			ps.executeUpdate();
			writer.println("Registration Successfull......!");
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
