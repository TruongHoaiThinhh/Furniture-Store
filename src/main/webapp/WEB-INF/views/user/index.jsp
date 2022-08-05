<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<title>Trang chủ</title>
<body>

	<!-- 
Body Section 
-->
	<div class="well np">
		<div id="myCarousel" class="carousel slide homCar">

			<div class="carousel-inner">
				<c:forEach var="item" items="${ slides }" varStatus="index">
					<c:if test="${ index.first }">
						<div class="item active">
					</c:if>
					<c:if test="${ not index.first }">
						<div class="item">
					</c:if>
					<img style="width: 100%"
						src="<c:url value="/assets/user/slide/${ item.img }"/>"
						alt="bootstrap ecommerce templates">
			</div>
			</c:forEach>
		</div>

		<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
	<!--
New Products
-->
	<div class="row">
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
			<div class="well well-small">
				<h3 style="color: #000; size:40;display: flex;justify-content: center;">Sản phẩm mới</h3>
				<hr class="soften" />
				<div class="row-fluid">
					<div id="newProductCar" class="carousel slide">
						<div class="carousel-inner">
							<c:if test="${ products.size() > 0 }">
								<div class="item active">
									<ul class="thumbnails">
										<c:forEach var="item" items="${ products }" varStatus="loop">
											<li class="span3">
												<div class="thumbnail">
													<a class="zoomTool" href="product_details.html"
														title="add to cart"><span class="icon-search"></span>
														QUICK VIEW</a> <a href="product_details.html"><img
														src="<c:url value="/assets/user/img/${ item.img }"/>"
														alt=""></a>
												</div>
											</li>
											<c:if
												test="${ (loop.index + 1) % 4 == 0 || (loop.index + 1)  == products.size() }">
									</ul>
								</div>
								<c:if test="${ (loop.index + 1) < products.size() }">
									<div class="item">
										<ul class="thumbnails">
								</c:if>
							</c:if>
							</c:forEach>
							</c:if>

						</div>
						<a class="left carousel-control" href="#newProductCar"
							data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
							href="#newProductCar" data-slide="next">&rsaquo;</a>
					</div>
				</div>

			</div>

			<!--
	Featured Products
	-->
			<div class="well well-small">
				<h3 style="color: #000; size:40;display: flex;justify-content: center;">
					<!-- <a class="btn btn-mini pull-right" href="products.html"
						title="View more">XEM THÊM<span class="icon-plus"></span>
						</a> --> Sản phẩm nổi bật
				</h3>
				<hr class="soften" />
				<div class="row-fluid">

					<c:if test="${ products.size() > 0 }">
						<ul class="thumbnails">

							<c:forEach var="item" items="${ products }" varStatus="loop">
								<li class="span4">
									<div class="thumbnail">
										<a class="zoomTool" href="#" title="add to cart"><span
											class="icon-search"></span> QUICK VIEW</a> <a
											href="chi-tiet-san-pham/${ item.id_product }"><img
											src="<c:url value="/assets/user/img/${ item.img }"/>" alt=""></a>
										<div class="caption">
											<h5>${ item.name }</h5>
											<h4>
												<a class="defaultBtn" href="product_details.html"
													title="Click to view"><span class="icon-zoom-in"></span></a>
												<a class="shopBtn" href="<c:url value="/AddCart/${ item.id_product }"/>" title="add to cart"><span
													class="icon-plus"></span></a> <span class="pull-right"><fmt:formatNumber
														type="number" groupingUsed="true" value="${ item.price }" />
													₫</span>
											</h4>
										</div>
									</div>
								</li>

								<c:if
									test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1)  == products.size() }">
						</ul>
						<c:if test="${ (loop.index + 1) < products.size() }">
							<ul class="thumbnails">
						</c:if>
					</c:if>

					</c:forEach>

					</c:if>

				</div>
			</div>
		</div>
	</div>

	<div class="group-furniture">
		<div class="box-flex">
			<div class="item-furniture">
				<div class="link-full"
					style="background-image: url(<c:url value="/assets/user/img/sanphamweb-1.jpg"/>);"></div>
				<div class="box">
					<div class="tt-2">SẢN PHẨM NỘI THẤT</div>
					<div class="mt10">
						<a href="/vi/san-pham/" class="link">XEM TẤT CẢ</a>
					</div>
				</div>
				<a href="/vi/san-pham/" class="full-link"></a>
			</div>
			<div class="box-flex">
				<div class="item-furniture small">
					<div class="link-full"
						style="background-image: url(<c:url value="/assets/user/img/tham2.jpg"/>);"></div>
					<div class="box">
						<div class="tt-2">THẢM</div>
						<div class="mt10">
							<a href="/vi/danh-muc-san-pham/tham/" class="link">XEM TẤT CẢ</a>
						</div>
					</div>
					<a href="/vi/danh-muc-san-pham/tham/" class="full-link"></a>
				</div>
				<div class="item-furniture small">
					<div class="link-full"
						style="background-image: url(<c:url value="/assets/user/img/den-1.jpg"/>);"></div>
					<div class="box">
						<div class="tt-2">ĐÈN</div>
						<div class="mt10">
							<a href="/vi/danh-muc-san-pham/den/" class="link">XEM TẤT CẢ</a>
						</div>
					</div>
					<a href="/vi/danh-muc-san-pham/den/" class="full-link"></a>
				</div>
			</div>
		</div>
		<div class="box-flex right">
			<div class="item-furniture">
				<div class="link-full"
					style="background-image: url(<c:url value="/assets/user/img/dotrangtri.jpg"/>);"></div>
				<div class="box">
					<div class="tt-2">ĐỒ TRANG TRÍ</div>
					<div class="mt10">
						<a href="/vi/danh-muc-san-pham/do-trang-tri/" class="link">XEM
							TẤT CẢ</a>
					</div>
				</div>
				<a href="/vi/danh-muc-san-pham/do-trang-tri/" class="full-link"></a>
			</div>
			<div class="box-flex">
				<div class="item-furniture small">
					<div class="link-full"
						style="background-image: url(<c:url value="/assets/user/img/chendia.jpg"/>);"></div>
					<div class="box">
						<div class="tt-2">CHÉN DĨA</div>
						<div class="mt10">
							<a href="/vi/danh-muc-san-pham/chen-dia/" class="link">XEM
								TẤT CẢ</a>
						</div>
					</div>
					<a href="/vi/danh-muc-san-pham/chen-dia/" class="full-link"></a>
				</div>
				<div class="item-furniture small">
					<div class="link-full"
						style="background-image: url(<c:url value="/assets/user/img/Giaydantuong.jpg"/>);"></div>
					<div class="box">
						<div class="tt-2">GIẤY DÁN TƯỜNG</div>
						<div class="mt10">
							<a href="/vi/danh-muc-san-pham/wallpaper/" class="link">XEM
								TẤT CẢ</a>
						</div>
					</div>
					<a href="/vi/danh-muc-san-pham/wallpaper/" class="full-link"></a>
				</div>
			</div>
		</div>
	</div>


</body>