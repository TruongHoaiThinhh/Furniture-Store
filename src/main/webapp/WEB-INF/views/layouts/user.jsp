<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><decorator:title default="Master-layout" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->

<link href="<c:url value="/assets/user/bootstrap.css"/>"
	rel="stylesheet" />
<!-- Customize styles -->
<link href="<c:url value="/assets/user/style1.css"/>" rel="stylesheet" />
<!-- font awesome styles -->
<link
	href="<c:url value="/assets/user/font-awesome/css/font-awesome.css"/>"
	rel="stylesheet">

<!-- Favicons -->
<link rel="shortcut icon"
	href="<c:url value="/assets/user/ico/favicon.ico"/>">
<decorator:head />
</head>
<body>
	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>

		<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>

		<decorator:body />

		<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>

	</div>
	<!-- /container -->



	<div class="copyright">
		<hr>
		<div class="container">

			<span>Copyright &copy; 2022 Truong Hoai Thinh | <a href="#"
				style="color: #eee">Chính sách</a> | <a href="#" style="color: #eee">Quy
					chế hoạt động</a> | <a href="#" style="color: #eee">Điều khoản và
					điều kiện</a> | <a href="#" style="color: #eee">Chủ sở hữu</a>
			</span>
		</div>
	</div>
	<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<c:url value="/assets/user/js/jquery.js"/>"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/jquery.easing-1.3.min.js"/>"></script>
	<script
		src="<c:url value="/assets/user/js/jquery.scrollTo-1.4.3.1-min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/shop.js"/>"></script>
	
			<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>
