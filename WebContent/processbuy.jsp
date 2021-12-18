<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String how = request.getParameter("how");
		
	PreparedStatement pstmt = null;	
	
	String sql = "insert into buy values(?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);	
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, phone);
	pstmt.setString(4, address);
	pstmt.setString(5, how);
	pstmt.executeUpdate();
	
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("shop.jsp");
	
%>
	
