 <%@ page import="java.sql.*"%>
<%
// 
	Connection conn = null;
	try {
		String url = "jdbc:mysql://localhost:3306/mysql";
		String id = "root";
		String pw = "ehrehr2";
		Class.forName("com.mysql.jdbc.Driver");
		String iid = request.getParameter("id");
		String ppw = request.getParameter("pw");
		conn = DriverManager.getConnection(url, "root", "ehrehr2");
		out.println("Connection success.");
		// out.println(id + pw);
		out.println(iid+ppw);
	} catch (Exception e) {
		e.printStackTrace();
	}
%> 
<%-- 
<%@ page import="java.sql.*"%>
<%
// 
	Connection conn = null;
	try {
		String url = "jdbc:mysql://localhost:3306/ex";
		String id = "root";
		String pw = " ";
		Class.forName("com.mysql.jdbc.Driver");
		String iid = request.getParameter("id");
		String ppw = request.getParameter("pw");
		conn = DriverManager.getConnection(url, iid, ppw);
		out.println("Connection success.");
		
		out.println(iid+ppw);
	} catch (Exception e) {
		e.printStackTrace();
	}
%> --%>