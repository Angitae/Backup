<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%
	// �� jsp �������� �α��� �� �� ���ϱ� ���ؼ� ��Ÿ�� ��
	//���� JDBC ����̹� �ε���Ű��...
	Class.forName("com.mysql.jdbc.Driver"); // load the driver
	request.setCharacterEncoding("UTF-8"); // charset. Encoding ����

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String url = "jdbc:mysql://localhost:3306/mysql";

	try {
		//		String url = "jdbc:mysql://35.231.97.240:3306/mysql";
		String id = request.getParameter("ki");
		String pw = request.getParameter("ee");

		// �ʵ� �Ӽ��� us_id�ΰŶ� us_pw�� �� id�� pw���ٰ� �ڱ�
		conn = DriverManager.getConnection(url, "root", "ehrehr2");

		pstmt = conn.prepareStatement("select * from kit where id=? AND pw =?");
		// SQL Injection ������

		pstmt.setString(1, id);
		pstmt.setString(2, pw);

		rs = pstmt.executeQuery();

		//int hp = rs.getInt("hp");
		//	int score = rs.getInt("score");
		//float pos_x = rs.getFloat("pos_x");
		//float pos_y = rs.getFloat("pos_y");
		//float pos_z = rs.getFloat("pos_z");
		//int scene = rs.getInt("scene");
%>

<table border="1" cellspacing="0">

<%
		while (rs.next()) {
%>
	<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getInt(3) %></td>
	</tr>
	<%
		}
	%>
</table>
<%
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
