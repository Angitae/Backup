<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.SQLException"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = null;
	PreparedStatement pstmt = null;
	try {
		//		String url = "jdbc:mysql://35.231.97.240:3306/mysql";
		String url = "jdbc:mysql://localhost:3306/mysql";
		conn = DriverManager.getConnection(url, "root", "ehrehr2");
		pstmt = conn.prepareStatement("insert into kit values(?, ?)"); // kit -> us
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		
		pstmt.executeUpdate();
	} finally {
		if (pstmt != null)
			try {
				pstmt.close();
			} catch (SQLException ex) {
			}
		if (conn != null)
			try {
				conn.close();
			} catch (SQLException ex) {
			}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Register_Client</title>
</head>
<body>

	ID :
	<input type="text" name="id">
	<br /> 
	Password :
	<input type="password" name="pw">
	<br />

</body>
</html>