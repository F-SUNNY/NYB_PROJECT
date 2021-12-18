<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String nickname = request.getParameter("nickname");
	String phone = request.getParameter("phone");
	
	System.out.println(id);	
	System.out.println(pw);	
	System.out.println(name);	
	System.out.println(email);	
	System.out.println(nickname);	
	System.out.println(phone);	
	
	PreparedStatement pstmt = null;	
	
	String sql = "insert into member values(?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setString(3, name);
	pstmt.setString(4, email);
	pstmt.setString(5, nickname);
	pstmt.setString(6, phone);
	pstmt.executeUpdate();
	
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("shop.jsp");
	
%>
	
