<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<head>
<meta charset="ISO-8859-1">
<title>Chi tiết sản phẩm</title>
<style>
.product-content {
	overflow-x: hidden;
}
</style>
</head>
<body>
	<!-- 
Body Section 
-->
	<div class="row product-content">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">

					<c:forEach var="item" items="${ categorys }">
						<li><a href="<c:url value="/san-pham/${ item.id }"/>"><span
								class="icon-circle-blank"></span> ${ item.name }</a></li>
						<li>
					</c:forEach>

					<li><a class="totalInCart" href="cart.html"><strong>Đã
								mua <span class="badge badge-warning pull-right"
								style="line-height: 18px;">${ TotalPriceCart }đ</span>
						</strong></a></li>
				</ul>
			</div>

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li><a href="products.html">Sản phẩm</a> <span class="divider">/</span></li>
				<li class="active">Chi tiết sản phẩm</li>
			</ul>
			<div class="well well-small">
				<div class="row-fluid">
					<div class="span5">
						<div id="myCarousel" class="carousel slide cntr">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img src="<c:url value="/assets/user/img/${ products.img }"/>"
										alt="" style="width: 100%"></a>
								</div>
							</div>
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev">‹</a> <a class="right carousel-control"
								href="#myCarousel" data-slide="next">›</a>
						</div>
					</div>
					<div class="span7">
						<h3>${ products.name }</h3>
						<hr class="soft" />

						<form class="form-horizontal qtyFrm" method="get" action="<c:url value="/AddCart/${ products.id_product }"/>">
							<div class="control-group">
								<label class="control-label"><span>Giá:  <fmt:formatNumber
											type="number" groupingUsed="true" value="${ products.price }" />₫</span></label>
<!-- 								<div class="controls"> -->
<!-- 									<input type="number" min="0" value="0" class="span6"> -->
<!-- 								</div> -->
							</div>

							<div class="control-group">
								<label class="control-label"><span>Màu</span></label>
								<div class="controls">
									<select class="span11">
										<option>Đen</option>
										<option>Trắng</option>
									</select>
								</div>
							</div>
							<h4>${ products.title }</h4>
								<button type="submit" class="shopBtn">
									<span class=" icon-shopping-cart"></span> Thêm vào giỏ hàng
								</button>
						</form>
					</div>
				</div>
				<hr class="softn clr" />


				<ul id="productDetail" class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">Thông tin sản phẩm</a></li>
					<li class=""><a href="#profile" data-toggle="tab">Sản phẩm liên quan </a></li>
				</ul>
				<div id="myTabContent" class="tab-content tabWrapper">
				
					<div class="tab-pane fade active in" id="home">${ products.details }
					</div>
					<div class="tab-pane fade" id="profile">
					
					<c:set var="countList" value="${ productsByIDCategory.size() }" />
					<c:if test="${ productsByIDCategory.size() > 10 }">
						<c:set var="countList" value="10" />
					</c:if>
					
						<c:forEach var="item" items="${ productsByIDCategory }" begin="1" end="${ countList }" varStatus="loop">
							<div class="row-fluid">
								<div class="span2">
									<img src="<c:url value="/assets/user/img/${ item.img }"/>" alt="">
								</div>
								<div class="span6">
									<h5>${ item.name }</h5>
									<p>${ item.title }</p>
								</div>
								<div class="span4 alignR">
									<form class="form-horizontal qtyFrm">
										<h3><fmt:formatNumber type="number" groupingUsed="true" value="${ products.price }" />₫</h3>
										<div class="btn-group">
											<a href="product_details.html" class="defaultBtn"><span
												class=" icon-shopping-cart"></span> Add to cart</a> <a
												href="product_details.html" class="shopBtn">VIEW</a>
										</div>
									</form>
								</div>
							</div>
							<hr class="soft" />
						</c:forEach>





					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Body wrapper -->
</body>
