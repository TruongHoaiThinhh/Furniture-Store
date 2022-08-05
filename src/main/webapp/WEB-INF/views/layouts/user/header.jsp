<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<header id="header">

</header>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
						 <c:if test="${ not empty LoginInfo }">
						 	<a href="#"><span class="icon-user"></span>${ LoginInfo.display_name }</a> 
						 	<a href="<c:url value="/dang-xuat"/>"><span class="icon-edit"></span> Đăng xuất </a>
						 
						</c:if>					 
						 <c:if test="${ empty LoginInfo }">
						 	<a href="<c:url value="/dang-ky"/>"><span class="icon-edit"></span> Đăng ký / Đăng nhập </a>
						 </c:if>
						 
						 
						 
						 <a href="<c:url value="/gio-hang"/>">
						 <span class="icon-shopping-cart"></span> ${ TotalQuantyCart } SẢN PHẨM - 
						 <span class="badge badge-warning"> ${ TotalPriceCart }đ</span></a>
						<strong style="color: #bbbbbb;"> Hotline: 0932670328 </strong>
				</div>
			</div>
		</div>
		<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">
					<c:forEach var = "item" items="${ menus }" varStatus="index">
						<c:if test="${ index.first }"> 
							<li class="active">
						</c:if>
						
						<c:if test="${ not index.first }">
							<li class="">
						</c:if>	
						<a href="<c:url value="/${ item.url }"/>">${ item.name } </a></li>
						
					</c:forEach>				

				</ul>
				<form action="#" class="navbar-search pull-left">
					<input type="text" placeholder="Search" class="search-query span2">
				</form>
				
				<ul class="nav pull-right">
				<c:if test="${ empty LoginInfo }">
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#">
							ĐĂNG NHẬP <b class="caret"></b></a>
						<div class="dropdown-menu">
							<form class="form-horizontal loginFrm">
								<div class="control-group">
									<input type="text" class="span2" id="inputEmail"
										placeholder="Email">
								</div>
								<div class="control-group">
									<input type="password" class="span2" id="inputPassword"
										placeholder="Password">
								</div>
								<div class="control-group">
									<label class="checkbox"> <input type="checkbox">
										LƯU MẬT KHẨU
									</label>
									<button type="submit" class="shopBtn btn-block">ĐĂNG NHẬP</button>
								</div>
							</form>
						</div></li>
					</c:if>
					<c:if test="${ not empty LoginInfo }">
						<li><a href="#">${ LoginInfo.display_name }<b class="caret"></b></a></li>
					</c:if>
				</ul>
			</div>		
		</div>
		
	</div>

</div>
	</div>
<!--
Navigation Bar Section 
-->
