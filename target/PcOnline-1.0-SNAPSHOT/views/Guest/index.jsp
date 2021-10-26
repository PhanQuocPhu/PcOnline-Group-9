<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="categories" scope="request" type="java.util.List<entity.Categories>"/>
<mt:guest_template tittle="Guest">
	<jsp:body>
		<!-- Begin Slider With Category Menu Area -->
		<div class="slider-with-banner">
			<div class="container">
				<div class="row">
					<!-- Begin Category Menu Area -->
					<div class="col-lg-3">
						<!--Category Menu Start-->
						<div class="category-menu">
							<div class="category-heading">
								<h2 class="categories-toggle"><span>categories</span></h2>
							</div>
							<c:choose>
								<c:when test="${categories.size() == 0}">
									<div class="card-body">
										<p class="card-text">Không có dữ liệu</p>
									</div>
								</c:when>
								<c:otherwise>
									<div id="cate-toggle" class="category-menu-list">
										<ul>
											<c:forEach var="c" items="${categories}" varStatus="status">
												<li class="${status.count >= 9 ? "rx-child" : ""}"><a
														href="<c:url value = "/home/product/list?cid=${c.id}"/>">${c.cname}</a></li>
											</c:forEach>
											<li class="rx-parent">
												<a class="rx-default">More Categories</a>
												<a class="rx-show">Less Categories</a>
											</li>
										</ul>
									</div>
								</c:otherwise>
							</c:choose>

						</div>
						<!--Category Menu End-->
					</div>
					<!-- Category Menu Area End Here -->
					<!-- Begin Slider Area -->
					<div class="col-lg-9">
						<div class="slider-area pt-sm-30 pt-xs-30">
							<div class="slider-active owl-carousel">
								<!-- Begin Single Slide Area -->
								<div class="single-slide align-center-left animation-style-02 bg-4">
									<div class="slider-progress"></div>
									<div class="slider-content">
										<h5>Sale Offer <span>-20% Off</span> This Week</h5>
										<h2>Chamcham Galaxy S9 | S9+</h2>
										<h3>Starting at <span>$589.00</span></h3>
										<div class="default-btn slide-btn">
											<a class="links" href="shop-left-sidebar.html">Shopping Now</a>
										</div>
									</div>
								</div>
								<!-- Single Slide Area End Here -->
								<!-- Begin Single Slide Area -->
								<div class="single-slide align-center-left animation-style-01 bg-5">
									<div class="slider-progress"></div>
									<div class="slider-content">
										<h5>Sale Offer <span>Black Friday</span> This Week</h5>
										<h2>Work Desk Surface Studio 2018</h2>
										<h3>Starting at <span>$1599.00</span></h3>
										<div class="default-btn slide-btn">
											<a class="links" href="shop-left-sidebar.html">Shopping Now</a>
										</div>
									</div>
								</div>
								<!-- Single Slide Area End Here -->
								<!-- Begin Single Slide Area -->
								<div class="single-slide align-center-left animation-style-02 bg-6">
									<div class="slider-progress"></div>
									<div class="slider-content">
										<h5>Sale Offer <span>-10% Off</span> This Week</h5>
										<h2>Phantom 4 Pro+ Obsidian</h2>
										<h3>Starting at <span>$809.00</span></h3>
										<div class="default-btn slide-btn">
											<a class="links" href="shop-left-sidebar.html">Shopping Now</a>
										</div>
									</div>
								</div>
								<!-- Single Slide Area End Here -->
							</div>
						</div>
					</div>
					<!-- Slider Area End Here -->
				</div>
			</div>
		</div>
		<!-- Slider With Category Menu Area End Here -->

		<!-- Begin Li's Static Banner Area -->
		<div class="li-static-banner pt-20 pt-sm-30">
			<div class="container">
				<div class="row">
					<!-- Begin Single Banner Area -->
					<div class="col-lg-4 col-md-4 text-center">
						<div class="single-banner pb-xs-30">
							<a href="#">
								<img src="${pageContext.request.contextPath}/assets/guest/images/banner/1_3.jpg"
									 alt="Li's Static Banner">
							</a>
						</div>
					</div>
					<!-- Single Banner Area End Here -->
					<!-- Begin Single Banner Area -->
					<div class="col-lg-4 col-md-4 text-center">
						<div class="single-banner pb-xs-30">
							<a href="#">
								<img src="${pageContext.request.contextPath}/assets/guest/images/banner/1_4.jpg"
									 alt="Li's Static Banner">
							</a>
						</div>
					</div>
					<!-- Single Banner Area End Here -->
					<!-- Begin Single Banner Area -->
					<div class="col-lg-4 col-md-4 text-center">
						<div class="single-banner">
							<a href="#">
								<img src="${pageContext.request.contextPath}/assets/guest/images/banner/1_5.jpg"
									 alt="Li's Static Banner">
							</a>
						</div>
					</div>
					<!-- Single Banner Area End Here -->
				</div>
			</div>
		</div>
		<!-- Li's Static Banner Area End Here -->

		<!-- Begin Li's Special Product Area -->
		<section class="product-area li-laptop-product Special-product pt-60 pb-45">
			<div class="container">
				<div class="row">
					<!-- Begin Li's Section Area -->
					<div class="col-lg-12">
						<div class="li-section-title">
							<h2>
								<span>Hot Deals Products</span>
							</h2>
						</div>
						<div class="row">
							<div class="special-product-active owl-carousel">
								<div class="col-lg-12">
									<!-- single-product-wrap start -->
									<div class="single-product-wrap">
										<div class="product-image">
											<a href="single-product.html">
												<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/1.jpg"
													 alt="Li's Product Image">
											</a>
											<span class="sticker">New</span>
										</div>
										<div class="product_desc">
											<div class="product_desc_info">
												<div class="product-review">
													<h5 class="manufacturer">
														<a href="shop-left-sidebar.html">Graphic Corner</a>
													</h5>
													<div class="rating-box">
														<ul class="rating">
															<li><i class="fa fa-star-o"></i></li>
															<li><i class="fa fa-star-o"></i></li>
															<li><i class="fa fa-star-o"></i></li>
															<li class="no-star"><i class="fa fa-star-o"></i></li>
															<li class="no-star"><i class="fa fa-star-o"></i></li>
														</ul>
													</div>
												</div>
												<h4><a class="product_name" href="single-product.html">Accusantium
													dolorem1</a></h4>
												<div class="price-box">
													<span class="new-price">$46.80</span>
												</div>
												<div class="countersection">
													<div class="li-countdown"></div>
												</div>
											</div>
											<div class="add-actions">
												<ul class="add-actions-link">
													<li class="add-cart active"><a href="#">Add to cart</a></li>
													<li><a class="links-details" href="wishlist.html"><i
															class="fa fa-heart-o"></i></a></li>
													<li><a href="#" title="quick view" class="quick-view-btn"
														   data-toggle="modal" data-target="#exampleModalCenter"><i
															class="fa fa-eye"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
									<!-- single-product-wrap end -->
								</div>
								<div class="col-lg-12">
									<!-- single-product-wrap start -->
									<div class="single-product-wrap">
										<div class="product-image">
											<a href="single-product.html">
												<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/2.jpg"
													 alt="Li's Product Image">
											</a>
											<span class="sticker">New</span>
										</div>
										<div class="product_desc">
											<div class="product_desc_info">
												<div class="product-review">
													<h5 class="manufacturer">
														<a href="shop-left-sidebar.html">Studio Design</a>
													</h5>
													<div class="rating-box">
														<ul class="rating">
															<li><i class="fa fa-star-o"></i></li>
															<li><i class="fa fa-star-o"></i></li>
															<li><i class="fa fa-star-o"></i></li>
															<li class="no-star"><i class="fa fa-star-o"></i></li>
															<li class="no-star"><i class="fa fa-star-o"></i></li>
														</ul>
													</div>
												</div>
												<h4><a class="product_name" href="single-product.html">Mug Today is
													a good day</a></h4>
												<div class="price-box">
													<span class="new-price new-price-2">$71.80</span>
													<span class="old-price">$77.22</span>
													<span class="discount-percentage">-7%</span>
												</div>
												<div class="countersection">
													<div class="li-countdown"></div>
												</div>
											</div>
											<div class="add-actions">
												<ul class="add-actions-link">
													<li class="add-cart active"><a href="#">Add to cart</a></li>
													<li><a class="links-details" href="wishlist.html"><i
															class="fa fa-heart-o"></i></a></li>
													<li><a href="#" title="quick view" class="quick-view-btn"
														   data-toggle="modal" data-target="#exampleModalCenter"><i
															class="fa fa-eye"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
									<!-- single-product-wrap end -->
								</div>
								<div class="col-lg-12">
									<!-- single-product-wrap start -->
									<div class="single-product-wrap">
										<div class="product-image">
											<a href="single-product.html">
												<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/5.jpg"
													 alt="Li's Product Image">
											</a>
											<span class="sticker">New</span>
										</div>
										<div class="product_desc">
											<div class="product_desc_info">
												<div class="product-review">
													<h5 class="manufacturer">
														<a href="shop-left-sidebar.html">Graphic Corner</a>
													</h5>
													<div class="rating-box">
														<ul class="rating">
															<li><i class="fa fa-star-o"></i></li>
															<li><i class="fa fa-star-o"></i></li>
															<li><i class="fa fa-star-o"></i></li>
															<li class="no-star"><i class="fa fa-star-o"></i></li>
															<li class="no-star"><i class="fa fa-star-o"></i></li>
														</ul>
													</div>
												</div>
												<h4><a class="product_name" href="single-product.html">Accusantium
													dolorem1</a></h4>
												<div class="price-box">
													<span class="new-price">$46.80</span>
												</div>
												<div class="countersection">
													<div class="li-countdown"></div>
												</div>
											</div>
											<div class="add-actions">
												<ul class="add-actions-link">
													<li class="add-cart active"><a href="#">Add to cart</a></li>
													<li><a class="links-details" href="wishlist.html"><i
															class="fa fa-heart-o"></i></a></li>
													<li><a href="#" title="quick view" class="quick-view-btn"
														   data-toggle="modal" data-target="#exampleModalCenter"><i
															class="fa fa-eye"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
									<!-- single-product-wrap end -->
								</div>
								<div class="col-lg-12">
									<!-- single-product-wrap start -->
									<div class="single-product-wrap">
										<div class="product-image">
											<a href="single-product.html">
												<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/8.jpg"
													 alt="Li's Product Image">
											</a>
											<span class="sticker">New</span>
										</div>
										<div class="product_desc">
											<div class="product_desc_info">
												<div class="product-review">
													<h5 class="manufacturer">
														<a href="shop-left-sidebar.html">Studio Design</a>
													</h5>
													<div class="rating-box">
														<ul class="rating">
															<li><i class="fa fa-star-o"></i></li>
															<li><i class="fa fa-star-o"></i></li>
															<li><i class="fa fa-star-o"></i></li>
															<li class="no-star"><i class="fa fa-star-o"></i></li>
															<li class="no-star"><i class="fa fa-star-o"></i></li>
														</ul>
													</div>
												</div>
												<h4><a class="product_name" href="single-product.html">Mug Today is
													a good day</a></h4>
												<div class="price-box">
													<span class="new-price new-price-2">$71.80</span>
													<span class="old-price">$77.22</span>
													<span class="discount-percentage">-7%</span>
												</div>
												<div class="countersection">
													<div class="li-countdown"></div>
												</div>
											</div>
											<div class="add-actions">
												<ul class="add-actions-link">
													<li class="add-cart active"><a href="#">Add to cart</a></li>
													<li><a class="links-details" href="wishlist.html"><i
															class="fa fa-heart-o"></i></a></li>
													<li><a href="#" title="quick view" class="quick-view-btn"
														   data-toggle="modal" data-target="#exampleModalCenter"><i
															class="fa fa-eye"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
									<!-- single-product-wrap end -->
								</div>
							</div>
						</div>
					</div>
					<!-- Li's Section Area End Here -->
				</div>
			</div>
		</section>
		<!-- Li's Special Product Area End Here -->
	</jsp:body>
</mt:guest_template>
