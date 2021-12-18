<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
	String filename = "";
	String realFolder = "C:\\upload"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String productid = multi.getParameter("productid");
	String pname = multi.getParameter("pname");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String p_condition = multi.getParameter("p_condition");
	String p_condition_2 = multi.getParameter("p_condition_2");
	
	String price = unitPrice;
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from product where productid = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productid);
	rs = pstmt.executeQuery();	
	System.out.println(fileName);
	
	if (rs.next()) {		
		if (fileName != null) {
			sql = "UPDATE product SET pname=?, price=?, description=?, manufacturer=?, category=?, p_condition=?, p_condition_2=?, fileName=? WHERE productid=?";	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productid);
			pstmt.setString(2, pname);
			pstmt.setString(3, price);
			pstmt.setString(4, description);
			pstmt.setString(5, manufacturer);
			pstmt.setString(6, category);
			pstmt.setString(7, p_condition);
			pstmt.setString(8, p_condition_2);
			pstmt.setString(9, fileName);	
			System.out.println(fileName);

			pstmt.executeUpdate();
		} else {
			sql = "UPDATE product SET pname=?, price=?, description=?, manufacturer=?, category=?, p_condition=?, p_condition_2=? WHERE productid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productid);
			pstmt.setString(2, pname);
			pstmt.setString(3, price);
			pstmt.setString(4, description);
			pstmt.setString(5, manufacturer);
			pstmt.setString(6, category);
			pstmt.setString(7, p_condition);
			pstmt.setString(8, p_condition_2);
			
			pstmt.executeUpdate();		
			System.out.println(fileName);
		}		
	}
	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("editproduct.jsp");
%>