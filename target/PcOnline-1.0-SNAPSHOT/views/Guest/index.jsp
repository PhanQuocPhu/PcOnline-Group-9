<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:guest_template tittle="Guest">
    <jsp:attribute name="content">
      <!-- Begin Header Area -->
			<header>
				<!-- Begin Header Top Area -->
				<div class="header-top">
					<div class="container">
						<div class="row">
							<!-- Begin Header Top Left Area -->
							<div class="col-lg-3 col-md-4">
								<div class="header-top-left">
									<ul class="phone-wrap">
										<li><span>Telephone Enquiry:</span><a href="#">(+123) 123 321 345</a></li>
									</ul>
								</div>
							</div>
							<!-- Header Top Left Area End Here -->
							<!-- Begin Header Top Right Area -->
							<div class="col-lg-9 col-md-8">
								<div class="header-top-right">
									<ul class="ht-menu">
										<!-- Begin Setting Area -->
										<li>
											<div class="ht-setting-trigger"><span>Setting</span></div>
											<div class="setting ht-setting">
												<ul class="ht-setting-list">
													<li><a href="login-register.html">My Account</a></li>
													<li><a href="checkout.html">Checkout</a></li>
													<li><a href="login-register.html">Sign In</a></li>
												</ul>
											</div>
										</li>
										<!-- Setting Area End Here -->
										<!-- Begin Currency Area -->
										<li>
											<span class="currency-selector-wrapper">Currency :</span>
											<div class="ht-currency-trigger"><span>USD $</span></div>
											<div class="currency ht-currency">
												<ul class="ht-setting-list">
													<li><a href="#">EUR €</a></li>
													<li class="active"><a href="#">USD $</a></li>
												</ul>
											</div>
										</li>
										<!-- Currency Area End Here -->
										<!-- Begin Language Area -->
										<li>
											<span class="language-selector-wrapper">Language :</span>
											<div class="ht-language-trigger"><span>English</span></div>
											<div class="language ht-language">
												<ul class="ht-setting-list">
													<li class="active"><a href="#"><img src="${pageContext.request.contextPath}/assets/guest/images/menu/flag-icon/1.jpg" alt="">English</a></li>
													<li><a href="#"><img src="${pageContext.request.contextPath}/assets/guest/images/menu/flag-icon/2.jpg" alt="">Français</a></li>
												</ul>
											</div>
										</li>
										<!-- Language Area End Here -->
									</ul>
								</div>
							</div>
							<!-- Header Top Right Area End Here -->
						</div>
					</div>
				</div>
				<!-- Header Top Area End Here -->
				<!-- Begin Header Middle Area -->
				<div class="header-middle pl-sm-0 pr-sm-0 pl-xs-0 pr-xs-0">
					<div class="container">
						<div class="row">
							<!-- Begin Header Logo Area -->
							<div class="col-lg-3">
								<div class="logo pb-sm-30 pb-xs-30">
									<a href="index.html">
										<img src="${pageContext.request.contextPath}/assets/guest/images/menu/logo/1.jpg" alt="">
									</a>
								</div>
							</div>
							<!-- Header Logo Area End Here -->
							<!-- Begin Header Middle Right Area -->
							<div class="col-lg-9">
								<!-- Begin Header Middle Searchbox Area -->
								<form action="#" class="hm-searchbox">
									<select class="nice-select select-search-category">
										<option value="0">All</option>
										<option value="10">Laptops</option>
										<option value="17">- -  Prime Video</option>
										<option value="20">- - - -  All Videos</option>
										<option value="21">- - - -  Blouses</option>
										<option value="22">- - - -  Evening Dresses</option>
										<option value="23">- - - -  Summer Dresses</option>
										<option value="24">- - - -  T-shirts</option>
										<option value="25">- - - -  Rent or Buy</option>
										<option value="26">- - - -  Your Watchlist</option>
										<option value="27">- - - -  Watch Anywhere</option>
										<option value="28">- - - -  Getting Started</option>
										<option value="18">- - - -  Computers</option>
										<option value="29">- - - -  More to Explore</option>
										<option value="30">- - - -  TV &amp; Video</option>
										<option value="31">- - - -  Audio &amp; Theater</option>
										<option value="32">- - - -  Camera, Photo </option>
										<option value="33">- - - -  Cell Phones</option>
										<option value="34">- - - -  Headphones</option>
										<option value="35">- - - -  Video Games</option>
										<option value="36">- - - -  Wireless Speakers</option>
										<option value="19">- - - -  Electronics</option>
										<option value="37">- - - -  Amazon Home</option>
										<option value="38">- - - -  Kitchen &amp; Dining</option>
										<option value="39">- - - -  Furniture</option>
										<option value="40">- - - -  Bed &amp; Bath</option>
										<option value="41">- - - -  Appliances</option>
										<option value="11">TV &amp; Audio</option>
										<option value="42">- -  Chamcham</option>
										<option value="45">- - - -  Office</option>
										<option value="47">- - - -  Gaming</option>
										<option value="48">- - - -  Chromebook</option>
										<option value="49">- - - -  Refurbished</option>
										<option value="50">- - - -  Touchscreen</option>
										<option value="51">- - - -  Ultrabooks</option>
										<option value="52">- - - -  Blouses</option>
										<option value="43">- -  Sanai</option>
										<option value="53">- - - -  Hard Drives</option>
										<option value="54">- - - -  Graphic Cards</option>
										<option value="55">- - - -  Processors (CPU)</option>
										<option value="56">- - - -  Memory</option>
										<option value="57">- - - -  Motherboards</option>
										<option value="58">- - - -  Fans &amp; Cooling</option>
										<option value="59">- - - -  CD/DVD Drives</option>
										<option value="44">- -  Meito</option>
										<option value="60">- - - -  Sound Cards</option>
										<option value="61">- - - -  Cases &amp; Towers</option>
										<option value="62">- - - -  Casual Dresses</option>
										<option value="63">- - - -  Evening Dresses</option>
										<option value="64">- - - -  T-shirts</option>
										<option value="65">- - - -  Tops</option>
										<option value="12">Smartphone</option>
										<option value="66">- -  Camera Accessories</option>
										<option value="68">- - - -  Octa Core</option>
										<option value="69">- - - -  Quad Core</option>
										<option value="70">- - - -  Dual Core</option>
										<option value="71">- - - -  7.0 Screen</option>
										<option value="72">- - - -  9.0 Screen</option>
										<option value="73">- - - -  Bags &amp; Cases</option>
										<option value="67">- -  Meito</option>
										<option value="74">- - - -  Batteries</option>
										<option value="75">- - - -  Microphones</option>
										<option value="76">- - - -  Stabilizers</option>
										<option value="77">- - - -  Video Tapes</option>
										<option value="78">- - - -  Memory Card Readers</option>
										<option value="79">- - - -  Tripods</option>
										<option value="13">Cameras</option>
										<option value="14">headphone</option>
										<option value="15">Smartwatch</option>
										<option value="16">Accessories</option>
									</select>
									<input type="text" placeholder="Enter your search key ...">
									<button class="li-btn" type="submit"><i class="fa fa-search"></i></button>
								</form>
								<!-- Header Middle Searchbox Area End Here -->
								<!-- Begin Header Middle Right Area -->
								<div class="header-middle-right">
									<ul class="hm-menu">
										<!-- Begin Header Middle Wishlist Area -->
										<li class="hm-wishlist">
											<a href="wishlist.html">
												<span class="cart-item-count wishlist-item-count">0</span>
												<i class="fa fa-heart-o"></i>
											</a>
										</li>
										<!-- Header Middle Wishlist Area End Here -->
										<!-- Begin Header Mini Cart Area -->
										<li class="hm-minicart">
											<div class="hm-minicart-trigger">
												<span class="item-icon"></span>
												<span class="item-text">£80.00
                                                    <span class="cart-item-count">2</span>
                                                </span>
											</div>
											<span></span>
											<div class="minicart">
												<ul class="minicart-product-list">
													<li>
														<a href="single-product.html" class="minicart-product-image">
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/small-size/1.jpg" alt="cart products">
														</a>
														<div class="minicart-product-details">
															<h6><a href="single-product.html">Aenean eu tristique</a></h6>
															<span>£40 x 1</span>
														</div>
														<button class="close">
															<i class="fa fa-close"></i>
														</button>
													</li>
													<li>
														<a href="single-product.html" class="minicart-product-image">
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/small-size/2.jpg" alt="cart products">
														</a>
														<div class="minicart-product-details">
															<h6><a href="single-product.html">Aenean eu tristique</a></h6>
															<span>£40 x 1</span>
														</div>
														<button class="close">
															<i class="fa fa-close"></i>
														</button>
													</li>
												</ul>
												<p class="minicart-total">SUBTOTAL: <span>£80.00</span></p>
												<div class="minicart-button">
													<a href="checkout.html" class="li-button li-button-dark li-button-fullwidth li-button-sm">
														<span>View Full Cart</span>
													</a>
													<a href="checkout.html" class="li-button li-button-fullwidth li-button-sm">
														<span>Checkout</span>
													</a>
												</div>
											</div>
										</li>
										<!-- Header Mini Cart Area End Here -->
									</ul>
								</div>
								<!-- Header Middle Right Area End Here -->
							</div>
							<!-- Header Middle Right Area End Here -->
						</div>
					</div>
				</div>
				<!-- Header Middle Area End Here -->
				<!-- Begin Header Bottom Area -->
				<%@include file="../../views/Guest/components/navbar.jsp" %>
				<!-- Header Bottom Area End Here -->
				<!-- Begin Mobile Menu Area -->
				<%@include file="../../views/Guest/components/mobile-menu.jsp" %>
				<!-- Mobile Menu Area End Here -->
			</header>
			<!-- Header Area End Here -->

			<!-- Begin Slider With Category Menu Area -->
			<%@include file="/views/Guest/components/category.jsp" %>
			<!-- Slider With Category Menu Area End Here -->
			<!-- Begin Li's Static Banner Area -->
			<div class="li-static-banner pt-20 pt-sm-30">
				<div class="container">
					<div class="row">
						<!-- Begin Single Banner Area -->
						<div class="col-lg-4 col-md-4 text-center">
							<div class="single-banner pb-xs-30">
								<a href="#">
									<img src="${pageContext.request.contextPath}/assets/guest/images/banner/1_3.jpg" alt="Li's Static Banner">
								</a>
							</div>
						</div>
						<!-- Single Banner Area End Here -->
						<!-- Begin Single Banner Area -->
						<div class="col-lg-4 col-md-4 text-center">
							<div class="single-banner pb-xs-30">
								<a href="#">
									<img src="${pageContext.request.contextPath}/assets/guest/images/banner/1_4.jpg" alt="Li's Static Banner">
								</a>
							</div>
						</div>
						<!-- Single Banner Area End Here -->
						<!-- Begin Single Banner Area -->
						<div class="col-lg-4 col-md-4 text-center">
							<div class="single-banner">
								<a href="#">
									<img src="${pageContext.request.contextPath}/assets/guest/images/banner/1_5.jpg" alt="Li's Static Banner">
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
													<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/1.jpg" alt="Li's Product Image">
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
													<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
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
														<li><a class="links-details" href="wishlist.html"><i class="fa fa-heart-o"></i></a></li>
														<li><a href="#" title="quick view" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
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
													<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/2.jpg" alt="Li's Product Image">
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
													<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
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
														<li><a class="links-details" href="wishlist.html"><i class="fa fa-heart-o"></i></a></li>
														<li><a href="#" title="quick view" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
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
													<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/5.jpg" alt="Li's Product Image">
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
													<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
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
														<li><a class="links-details" href="wishlist.html"><i class="fa fa-heart-o"></i></a></li>
														<li><a href="#" title="quick view" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
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
													<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/8.jpg" alt="Li's Product Image">
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
													<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
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
														<li><a class="links-details" href="wishlist.html"><i class="fa fa-heart-o"></i></a></li>
														<li><a href="#" title="quick view" class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-eye"></i></a></li>
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

			<!-- Begin Li's TV & Audio Product Area -->
			<section class="product-area li-laptop-product li-tv-audio-product pb-45">
				<div class="container">
					<div class="row">
						<!-- Begin Li's Section Area -->
						<div class="col-lg-12">
							<div class="li-section-title">
								<h2>
									<span>TV & Audio</span>
								</h2>
								<ul class="li-sub-category-list">
									<li class="active"><a href="shop-left-sidebar.html">Chamcham</a></li>
									<li><a href="shop-left-sidebar.html">Sanai</a></li>
									<li><a href="shop-left-sidebar.html">Meito</a></li>
								</ul>
							</div>
							<div class="row">
								<div class="product-active owl-carousel">
									<div class="col-lg-12">
										<!-- single-product-wrap start -->
										<div class="single-product-wrap">
											<div class="product-image">
												<a href="single-product.html">
													<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/3.jpg" alt="Li's Product Image">
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
													<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
													<div class="price-box">
														<span class="new-price">$46.80</span>
													</div>
												</div>
												<div class="add-actions">
													<ul class="add-actions-link">
														<li class="add-cart active"><a href="#">Add to cart</a></li>
														<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
														<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
													<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/5.jpg" alt="Li's Product Image">
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
													<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
													<div class="price-box">
														<span class="new-price new-price-2">$71.80</span>
														<span class="old-price">$77.22</span>
														<span class="discount-percentage">-7%</span>
													</div>
												</div>
												<div class="add-actions">
													<ul class="add-actions-link">
														<li class="add-cart active"><a href="#">Add to cart</a></li>
														<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
														<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
													<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/7.jpg" alt="Li's Product Image">
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
													<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
													<div class="price-box">
														<span class="new-price">$46.80</span>
													</div>
												</div>
												<div class="add-actions">
													<ul class="add-actions-link">
														<li class="add-cart active"><a href="#">Add to cart</a></li>
														<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
														<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
													<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/9.jpg" alt="Li's Product Image">
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
													<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
													<div class="price-box">
														<span class="new-price new-price-2">$71.80</span>
														<span class="old-price">$77.22</span>
														<span class="discount-percentage">-7%</span>
													</div>
												</div>
												<div class="add-actions">
													<ul class="add-actions-link">
														<li class="add-cart active"><a href="#">Add to cart</a></li>
														<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
														<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
													<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/11.jpg" alt="Li's Product Image">
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
													<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
													<div class="price-box">
														<span class="new-price">$46.80</span>
													</div>
												</div>
												<div class="add-actions">
													<ul class="add-actions-link">
														<li class="add-cart active"><a href="#">Add to cart</a></li>
														<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
														<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
													<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/11.jpg" alt="Li's Product Image">
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
													<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
													<div class="price-box">
														<span class="new-price new-price-2">$71.80</span>
														<span class="old-price">$77.22</span>
														<span class="discount-percentage">-7%</span>
													</div>
												</div>
												<div class="add-actions">
													<ul class="add-actions-link">
														<li class="add-cart active"><a href="#">Add to cart</a></li>
														<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
														<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
			<!-- Li's TV & Audio Product Area End Here -->

			<!-- Begin Li's Static Banner Area -->
			<div class="li-static-banner li-static-banner-3 text-center">
				<div class="container">
					<div class="row">
						<!-- Begin Single Banner Area -->
						<div class="col-lg-6 col-md-6">
							<div class="single-banner pb-xs-30">
								<a href="#">
									<img src="${pageContext.request.contextPath}/assets/guest/images/banner/2_3.jpg" alt="Li's Static Banner">
								</a>
							</div>
						</div>
						<!-- Single Banner Area End Here -->
						<!-- Begin Single Banner Area -->
						<div class="col-lg-6 col-md-6">
							<div class="single-banner">
								<a href="#">
									<img src="${pageContext.request.contextPath}/assets/guest/images/banner/2_4.jpg" alt="Li's Static Banner">
								</a>
							</div>
						</div>
						<!-- Single Banner Area End Here -->
					</div>
				</div>
			</div>
			<!-- Li's Static Banner Area End Here -->

			<!-- Begin Li's Trending Product Area -->
			<section class="product-area li-trending-product pt-60 pb-45 pt-xs-50">
				<div class="container">
					<div class="row">
						<!-- Begin Li's Tab Menu Area -->
						<div class="col-lg-12">
							<div class="li-product-tab li-trending-product-tab">
								<h2>
									<span>Trendding Products</span>
								</h2>
								<ul class="nav li-product-menu li-trending-product-menu">
									<li><a class="active" data-toggle="tab" href="#home1"><span>Sanai</span></a></li>
									<li><a data-toggle="tab" href="#home2"><span>Camera Accessories</span></a></li>
									<li><a data-toggle="tab" href="#home3"><span>Meito</span></a></li>
								</ul>
							</div>
							<!-- Begin Li's Tab Menu Content Area -->
							<div class="tab-content li-tab-content li-trending-product-content">
								<div id="home1" class="tab-pane show fade in active">
									<div class="row">
										<div class="product-active owl-carousel">
											<div class="col-lg-12">
												<!-- single-product-wrap start -->
												<div class="single-product-wrap">
													<div class="product-image">
														<a href="single-product.html">
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/2.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
															<div class="price-box">
																<span class="new-price">$46.80</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/4.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
															<div class="price-box">
																<span class="new-price new-price-2">$71.80</span>
																<span class="old-price">$77.22</span>
																<span class="discount-percentage">-7%</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/6.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
															<div class="price-box">
																<span class="new-price">$46.80</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/8.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
															<div class="price-box">
																<span class="new-price new-price-2">$71.80</span>
																<span class="old-price">$77.22</span>
																<span class="discount-percentage">-7%</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/10.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
															<div class="price-box">
																<span class="new-price">$46.80</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/12.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
															<div class="price-box">
																<span class="new-price new-price-2">$71.80</span>
																<span class="old-price">$77.22</span>
																<span class="discount-percentage">-7%</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
															</ul>
														</div>
													</div>
												</div>
												<!-- single-product-wrap end -->
											</div>
										</div>
									</div>
								</div>
								<div id="home2" class="tab-pane fade">
									<div class="row">
										<div class="product-active owl-carousel">
											<div class="col-lg-12">
												<!-- single-product-wrap start -->
												<div class="single-product-wrap">
													<div class="product-image">
														<a href="single-product.html">
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/11.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
															<div class="price-box">
																<span class="new-price">$46.80</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/7.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
															<div class="price-box">
																<span class="new-price new-price-2">$71.80</span>
																<span class="old-price">$77.22</span>
																<span class="discount-percentage">-7%</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/9.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
															<div class="price-box">
																<span class="new-price">$46.80</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/5.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
															<div class="price-box">
																<span class="new-price new-price-2">$71.80</span>
																<span class="old-price">$77.22</span>
																<span class="discount-percentage">-7%</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/7.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
															<div class="price-box">
																<span class="new-price">$46.80</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/5.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
															<div class="price-box">
																<span class="new-price new-price-2">$71.80</span>
																<span class="old-price">$77.22</span>
																<span class="discount-percentage">-7%</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
															</ul>
														</div>
													</div>
												</div>
												<!-- single-product-wrap end -->
											</div>
										</div>
									</div>
								</div>
								<div id="home3" class="tab-pane fade">
									<div class="row">
										<div class="product-active owl-carousel">
											<div class="col-lg-12">
												<!-- single-product-wrap start -->
												<div class="single-product-wrap">
													<div class="product-image">
														<a href="single-product.html">
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/3.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
															<div class="price-box">
																<span class="new-price">$46.80</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/7.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
															<div class="price-box">
																<span class="new-price new-price-2">$71.80</span>
																<span class="old-price">$77.22</span>
																<span class="discount-percentage">-7%</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/9.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
															<div class="price-box">
																<span class="new-price">$46.80</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/1.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
															<div class="price-box">
																<span class="new-price new-price-2">$71.80</span>
																<span class="old-price">$77.22</span>
																<span class="discount-percentage">-7%</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/11.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Accusantium dolorem1</a></h4>
															<div class="price-box">
																<span class="new-price">$46.80</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
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
															<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/9.jpg" alt="Li's Product Image">
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
															<h4><a class="product_name" href="single-product.html">Mug Today is a good day</a></h4>
															<div class="price-box">
																<span class="new-price new-price-2">$71.80</span>
																<span class="old-price">$77.22</span>
																<span class="discount-percentage">-7%</span>
															</div>
														</div>
														<div class="add-actions">
															<ul class="add-actions-link">
																<li class="add-cart active"><a href="#">Add to cart</a></li>
																<li><a class="links-details" href="single-product.html"><i class="fa fa-heart-o"></i></a></li>
																<li><a class="quick-view" data-toggle="modal" data-target="#exampleModalCenter" href="#"><i class="fa fa-eye"></i></a></li>
															</ul>
														</div>
													</div>
												</div>
												<!-- single-product-wrap end -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Tab Menu Content Area End Here -->
						</div>
						<!-- Tab Menu Area End Here -->
					</div>
				</div>
			</section>
			<!-- Li's Trending Product Area End Here -->

			<!-- Begin Footer Area -->
			<div class="footer">
				<!-- Begin Footer Static Top Area -->
				<div class="footer-static-top footer-static-top-3 pt-xs-50 pb-xs-10">
					<div class="container">
						<!-- Begin Footer Shipping Area -->
						<div class="footer-shipping pb-xs-0">
							<div class="row">
								<!-- Begin Li's Shipping Inner Box Area -->
								<div class="col-lg-3 col-md-3 col-sm-6 pb-xs-45">
									<div class="li-shipping-inner-box">
										<div class="shipping-icon">
											<img src="${pageContext.request.contextPath}/assets/guest/images/shipping-icon/1.png" alt="Shipping Icon">
										</div>
										<div class="shipping-text">
											<h2>Free Delivery</h2>
											<p>And free returns. See checkout for delivery dates.</p>
										</div>
									</div>
								</div>
								<!-- Li's Shipping Inner Box Area End Here -->
								<!-- Begin Li's Shipping Inner Box Area -->
								<div class="col-lg-3 col-md-3 col-sm-6 pb-xs-45">
									<div class="li-shipping-inner-box">
										<div class="shipping-icon">
											<img src="${pageContext.request.contextPath}/assets/guest/images/shipping-icon/2.png" alt="Shipping Icon">
										</div>
										<div class="shipping-text">
											<h2>Safe Payment</h2>
											<p>Pay with the world's most popular and secure payment methods.</p>
										</div>
									</div>
								</div>
								<!-- Li's Shipping Inner Box Area End Here -->
								<!-- Begin Li's Shipping Inner Box Area -->
								<div class="col-lg-3 col-md-3 col-sm-6 pb-xs-45">
									<div class="li-shipping-inner-box">
										<div class="shipping-icon">
											<img src="${pageContext.request.contextPath}/assets/guest/images/shipping-icon/3.png" alt="Shipping Icon">
										</div>
										<div class="shipping-text">
											<h2>Shop with Confidence</h2>
											<p>Our Buyer Protection covers your purchasefrom click to delivery.</p>
										</div>
									</div>
								</div>
								<!-- Li's Shipping Inner Box Area End Here -->
								<!-- Begin Li's Shipping Inner Box Area -->
								<div class="col-lg-3 col-md-3 col-sm-6">
									<div class="li-shipping-inner-box last-child">
										<div class="shipping-icon">
											<img src="${pageContext.request.contextPath}/assets/guest/images/shipping-icon/4.png" alt="Shipping Icon">
										</div>
										<div class="shipping-text">
											<h2>24/7 Help Center</h2>
											<p>Have a question? Call a Specialist or chat online.</p>
										</div>
									</div>
								</div>
								<!-- Li's Shipping Inner Box Area End Here -->
							</div>
						</div>
						<!-- Footer Shipping Area End Here -->
					</div>
				</div>
				<!-- Footer Static Top Area End Here -->
				<!-- Begin Footer Static Middle Area -->
				<div class="footer-static-middle">
					<div class="container">
						<div class="footer-logo-wrap pt-50 pb-35">
							<div class="row">
								<!-- Begin Footer Logo Area -->
								<div class="col-lg-4 col-md-6">
									<div class="footer-logo">
										<img src="${pageContext.request.contextPath}/assets/guest/images/menu/logo/1.jpg" alt="Footer Logo">
										<p class="info">
											We are a team of designers and developers that create high quality HTML Template & Woocommerce, Shopify Theme.
										</p>
									</div>
									<ul class="des">
										<li>
											<span>Address: </span>
											6688Princess Road, London, Greater London BAS 23JK, UK
										</li>
										<li>
											<span>Phone: </span>
											<a href="#">(+123) 123 321 345</a>
										</li>
										<li>
											<span>Email: </span>
											<a href="mailto://info@yourdomain.com">info@yourdomain.com</a>
										</li>
									</ul>
								</div>
								<!-- Footer Logo Area End Here -->
								<!-- Begin Footer Block Area -->
								<div class="col-lg-2 col-md-3 col-sm-6">
									<div class="footer-block">
										<h3 class="footer-block-title">Product</h3>
										<ul>
											<li><a href="#">Prices drop</a></li>
											<li><a href="#">New products</a></li>
											<li><a href="#">Best sales</a></li>
											<li><a href="#">Contact us</a></li>
										</ul>
									</div>
								</div>
								<!-- Footer Block Area End Here -->
								<!-- Begin Footer Block Area -->
								<div class="col-lg-2 col-md-3 col-sm-6">
									<div class="footer-block">
										<h3 class="footer-block-title">Our company</h3>
										<ul>
											<li><a href="#">Delivery</a></li>
											<li><a href="#">Legal Notice</a></li>
											<li><a href="#">About us</a></li>
											<li><a href="#">Contact us</a></li>
										</ul>
									</div>
								</div>
								<!-- Footer Block Area End Here -->
								<!-- Begin Footer Block Area -->
								<div class="col-lg-4">
									<div class="footer-block">
										<h3 class="footer-block-title">Follow Us</h3>
										<ul class="social-link">
											<li class="twitter">
												<a href="https://twitter.com/" data-toggle="tooltip" target="_blank" title="Twitter">
													<i class="fa fa-twitter"></i>
												</a>
											</li>
											<li class="rss">
												<a href="https://rss.com/" data-toggle="tooltip" target="_blank" title="RSS">
													<i class="fa fa-rss"></i>
												</a>
											</li>
											<li class="google-plus">
												<a href="https://www.plus.google.com/discover" data-toggle="tooltip" target="_blank" title="Google +">
													<i class="fa fa-google-plus"></i>
												</a>
											</li>
											<li class="facebook">
												<a href="https://www.facebook.com/" data-toggle="tooltip" target="_blank" title="Facebook">
													<i class="fa fa-facebook"></i>
												</a>
											</li>
											<li class="youtube">
												<a href="https://www.youtube.com/" data-toggle="tooltip" target="_blank" title="Youtube">
													<i class="fa fa-youtube"></i>
												</a>
											</li>
											<li class="instagram">
												<a href="https://www.instagram.com/" data-toggle="tooltip" target="_blank" title="Instagram">
													<i class="fa fa-instagram"></i>
												</a>
											</li>
										</ul>
									</div>
									<!-- Begin Footer Newsletter Area -->
									<div class="footer-newsletter">
										<h4>Sign up to newsletter</h4>
										<form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="footer-subscribe-form validate" target="_blank" novalidate>
											<div id="mc_embed_signup_scroll">
												<div id="mc-form" class="mc-form subscribe-form form-group" >
													<input id="mc-email" type="email" autocomplete="off" placeholder="Enter your email" />
													<button  class="btn" id="mc-submit">Subscribe</button>
												</div>
											</div>
										</form>
									</div>
									<!-- Footer Newsletter Area End Here -->
								</div>
								<!-- Footer Block Area End Here -->
							</div>
						</div>
					</div>
				</div>
				<!-- Footer Static Middle Area End Here -->
				<!-- Begin Footer Static Bottom Area -->
				<div class="footer-static-bottom">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<!-- Begin Footer Links Area -->
								<div class="footer-links">
									<ul>
										<li><a href="#">Online Shopping</a></li>
										<li><a href="#">Promotions</a></li>
										<li><a href="#">My Orders</a></li>
										<li><a href="#">Help</a></li>
										<li><a href="#">Customer Service</a></li>
										<li><a href="#">Support</a></li>
										<li><a href="#">Most Populars</a></li>
										<li><a href="#">New Arrivals</a></li>
										<li><a href="#">Special Products</a></li>
										<li><a href="#">Manufacturers</a></li>
										<li><a href="#">Our Stores</a></li>
										<li><a href="#">Shipping</a></li>
										<li><a href="#">Payments</a></li>
										<li><a href="#">Warantee</a></li>
										<li><a href="#">Refunds</a></li>
										<li><a href="#">Checkout</a></li>
										<li><a href="#">Discount</a></li>
										<li><a href="#">Refunds</a></li>
										<li><a href="#">Policy Shipping</a></li>
									</ul>
								</div>
								<!-- Footer Links Area End Here -->
								<!-- Begin Footer Payment Area -->
								<div class="payment text-center">
									<a href="#">
										<img src="${pageContext.request.contextPath}/assets/guest/images/payment/1.png" alt="">
									</a>
								</div>
								<!-- Footer Payment Area End Here -->
								<!-- Begin Copyright Area -->
								<div class="copyright text-center pt-30 pb-50">
									<span><a href="https://www.templatespoint.net" target="_blank">Templates Point</a></span>
								</div>
								<!-- Copyright Area End Here -->
							</div>
						</div>
					</div>
				</div>
				<!-- Footer Static Bottom Area End Here -->
			</div>
			<!-- Footer Area End Here -->

			<!-- Begin Quick View | Modal Area -->
			<div class="modal fade modal-wrapper" id="exampleModalCenter" >
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-body">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<div class="modal-inner-area row">
								<div class="col-lg-5 col-md-6 col-sm-6">
									<!-- Product Details Left -->
									<div class="product-details-left">
										<div class="product-details-images slider-navigation-1">
											<div class="lg-image">
												<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/1.jpg" alt="product image">
											</div>
											<div class="lg-image">
												<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/2.jpg" alt="product image">
											</div>
											<div class="lg-image">
												<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/3.jpg" alt="product image">
											</div>
											<div class="lg-image">
												<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/4.jpg" alt="product image">
											</div>
											<div class="lg-image">
												<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/5.jpg" alt="product image">
											</div>
											<div class="lg-image">
												<img src="${pageContext.request.contextPath}/assets/guest/images/product/large-size/6.jpg" alt="product image">
											</div>
										</div>
										<div class="product-details-thumbs slider-thumbs-1">
											<div class="sm-image"><img src="${pageContext.request.contextPath}/assets/guest/images/product/small-size/1.jpg" alt="product image thumb"></div>
											<div class="sm-image"><img src="${pageContext.request.contextPath}/assets/guest/images/product/small-size/2.jpg" alt="product image thumb"></div>
											<div class="sm-image"><img src="${pageContext.request.contextPath}/assets/guest/images/product/small-size/3.jpg" alt="product image thumb"></div>
											<div class="sm-image"><img src="${pageContext.request.contextPath}/assets/guest/images/product/small-size/4.jpg" alt="product image thumb"></div>
											<div class="sm-image"><img src="${pageContext.request.contextPath}/assets/guest/images/product/small-size/5.jpg" alt="product image thumb"></div>
											<div class="sm-image"><img src="${pageContext.request.contextPath}/assets/guest/images/product/small-size/6.jpg" alt="product image thumb"></div>
										</div>
									</div>
									<!--// Product Details Left -->
								</div>

								<div class="col-lg-7 col-md-6 col-sm-6">
									<div class="product-details-view-content pt-60">
										<div class="product-info">
											<h2>Today is a good day Framed poster</h2>
											<span class="product-details-ref">Reference: demo_15</span>
											<div class="rating-box pt-20">
												<ul class="rating rating-with-review-item">
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li class="no-star"><i class="fa fa-star-o"></i></li>
													<li class="no-star"><i class="fa fa-star-o"></i></li>
													<li class="review-item"><a href="#">Read Review</a></li>
													<li class="review-item"><a href="#">Write Review</a></li>
												</ul>
											</div>
											<div class="price-box pt-20">
												<span class="new-price new-price-2">$57.98</span>
											</div>
											<div class="product-desc">
												<p>
                                                    <span>100% cotton double printed dress. Black and white striped top and orange high waisted skater skirt bottom. Lorem ipsum dolor sit amet, consectetur adipisicing elit. quibusdam corporis, earum facilis et nostrum dolorum accusamus similique eveniet quia pariatur.
                                                    </span>
												</p>
											</div>
											<div class="product-variants">
												<div class="produt-variants-size">
													<label>Dimension</label>
													<select class="nice-select">
														<option value="1" title="S" selected="selected">40x60cm</option>
														<option value="2" title="M">60x90cm</option>
														<option value="3" title="L">80x120cm</option>
													</select>
												</div>
											</div>
											<div class="single-add-to-cart">
												<form action="#" class="cart-quantity">
													<div class="quantity">
														<label>Quantity</label>
														<div class="cart-plus-minus">
															<input class="cart-plus-minus-box" value="1" type="text">
															<div class="dec qtybutton"><i class="fa fa-angle-down"></i></div>
															<div class="inc qtybutton"><i class="fa fa-angle-up"></i></div>
														</div>
													</div>
													<button class="add-to-cart" type="submit">Add to cart</button>
												</form>
											</div>
											<div class="product-additional-info pt-25">
												<a class="wishlist-btn" href="wishlist.html"><i class="fa fa-heart-o"></i>Add to wishlist</a>
												<div class="product-social-sharing pt-25">
													<ul>
														<li class="facebook"><a href="#"><i class="fa fa-facebook"></i>Facebook</a></li>
														<li class="twitter"><a href="#"><i class="fa fa-twitter"></i>Twitter</a></li>
														<li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i>Google +</a></li>
														<li class="instagram"><a href="#"><i class="fa fa-instagram"></i>Instagram</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Quick View | Modal Area End Here -->
    </jsp:attribute>
</mt:guest_template>