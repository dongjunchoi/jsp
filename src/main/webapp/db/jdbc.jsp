<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<%
	//DB작업에 필요한 객체 변수 선언
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			try {
				
				//1.드라이버 로딩
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				//2.DB에 접속하기 ==> connection객체 생성
				long startTime = System.currentTimeMillis();					
				for(int i = 0; i < 30; i++){
					conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","PC01","java");
					conn.close();				
				}
				long endTime = System.currentTimeMillis();
				System.out.print("duration : " + (endTime - startTime));
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}finally {
				//6. 사용했던 자원 반납하기
				if(conn != null) try {conn.close();} catch (SQLException e) {}
				
			}
	%>
</body>
</html>