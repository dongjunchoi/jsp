<%@page import="kr.or.ddit.user.model.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Jsp</title>

<%@ include file="/common/common_lib.jsp"%>
<link href="<%=request.getContextPath()%>/css/dashboard.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/blog.css" rel="stylesheet">
</head>

<body>
	<%@include file="/common/header.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<%@ include file="/common/left.jsp"%>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<%
				UserVo vo = (UserVo)request.getAttribute("uservo");
			%>
				<form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/userModify">
					<input type = "hidden" name="userid" value="<%=vo.getUserid() %>"/>
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 아이디</label>
						<div class="col-sm-10">
							<label class="control-label"><%=vo.getUserid() %></label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 이름</label>
						<div class="col-sm-10">
							<label class="control-label"><%=vo.getUsernm() %></label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="pass" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-10">
						<label class="control-label">
							<%
								int a = vo.getPass().length();
								String test = vo.getPass();
								for(int i = 1; i <= a; i++){%>
									*
								<%}%>
								</label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="pass" class="col-sm-2 control-label">등록일시</label>
						<div class="col-sm-10">
							<label class="control-label"><%=vo.getReg_dt_fmt() %></label>
						</div>
					</div>

					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">별명</label>
						<div class="col-sm-10">
							<label class="control-label"><%=vo.getAlias() %></label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">도로주소</label>
						<div class="col-sm-10">
							<label class="control-label"><%=vo.getAddr1() %></label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">상세주소</label>
						<div class="col-sm-10">
							<label class="control-label"><%=vo.getAddr2() %></label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">우편번호 코드</label>
						<div class="col-sm-10">
							<label class="control-label"><%=vo.getZipcode() %></label>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">사용자 수정</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>