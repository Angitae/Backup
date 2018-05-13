<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "org.json.simple.*" %>

<html>
<head><title>연습</title></head>
<body>


<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	System.out.println("id"+id);
	
	//JSONObject jobj1 = (JSONObject)JSONValue.parse(id);
	//JSONObject jobj2 = (JSONObject)JSONValue.parse(pw);
	
	//id = jobj1.get("id").toString();
	//pw = jobj2.get("pw").toString();
	int etc = 0;
	
try {
	
	// wwwform을  쓸 때 폼을 만들어 주기 
	// text형식으로 하기~~~
	String url = "jdbc:mysql://localhost:3306/mysql";
	conn = DriverManager.getConnection(url, "root", "ehrehr2");
	
	pstmt = conn.prepareStatement("insert into kit values(?, ?, ?)"); // kit -> us
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setInt(3, etc);
	pstmt.executeUpdate();
} catch(SQLException e){
	e.printStackTrace();
}
%>


</body>
</html>