<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<mt:guest_template tittle="Guest">
	<jsp:body>
		<!-- Begin Li's Breadcrumb Area -->
		<div class="breadcrumb-area">
			<div class="container">
				<div class="breadcrumb-content">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li class="active">Single Product Affiliate</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Li's Breadcrumb Area End Here -->
		<!-- content-wraper start -->
		<div class="content-wraper">
			<div class="container">
				<div class="row single-product-area">
					<div class="col-lg-5 col-md-6">
						<!-- Product Details Left -->
						<div class="product-details-left">
							<div class="product-details-images slider-navigation-1">
								<div class="lg-image">
									<img src="images/product/large-size/1.jpg" alt="product image">
								</div>
								<div class="lg-image">
									<img src="images/product/large-size/2.jpg" alt="product image">
								</div>
								<div class="lg-image">
									<img src="images/product/large-size/3.jpg" alt="product image">
								</div>
								<div class="lg-image">
									<img src="images/product/large-size/4.jpg" alt="product image">
								</div>
								<div class="lg-image">
									<img src="images/product/large-size/5.jpg" alt="product image">
								</div>
								<div class="lg-image">
									<img src="images/product/large-size/6.jpg" alt="product image">
								</div>
							</div>
							<div class="product-details-thumbs slider-thumbs-1">
								<div class="sm-image"><img src="images/product/small-size/1.jpg"
														   alt="product image thumb">
								</div>
								<div class="sm-image"><img src="images/product/small-size/2.jpg"
														   alt="product image thumb">
								</div>
								<div class="sm-image"><img src="images/product/small-size/3.jpg"
														   alt="product image thumb">
								</div>
								<div class="sm-image"><img src="images/product/small-size/4.jpg"
														   alt="product image thumb">
								</div>
								<div class="sm-image"><img src="images/product/small-size/5.jpg"
														   alt="product image thumb">
								</div>
								<div class="sm-image"><img src="images/product/small-size/6.jpg"
														   alt="product image thumb">
								</div>
							</div>
						</div>
						<!--// Product Details Left -->
					</div>

					<div class="col-lg-7 col-md-6">
						<div class="product-details-view-content sp-affiliate-content pt-60">
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
								<div class="single-add-to-cart">
									<form action="#" class="cart-quantity">
										<button class="add-to-cart" type="submit">Add to cart</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- content-wraper end -->
		<!-- Begin Product Area -->
		<div class="product-area pt-35">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="li-product-tab">
							<ul class="nav li-product-menu">
								<li><a class="active" data-toggle="tab" href="#description"><span>Description</span></a>
								</li>
								<li><a data-toggle="tab" href="#product-details"><span>Product Details</span></a></li>
								<li><a data-toggle="tab" href="#reviews"><span>Reviews</span></a></li>
							</ul>
						</div>
						<!-- Begin Li's Tab Menu Content Area -->
					</div>
				</div>
				<div class="tab-content">
					<div id="description" class="tab-pane active show" role="tabpanel">
						<div class="product-description">
							<span>The best is yet to come! Give your walls a voice with a framed poster. This aesthethic, optimistic poster will look great in your desk or in an open-space office. Painted wooden frame with passe-partout for more depth.</span>
						</div>
					</div>
					<div id="product-details" class="tab-pane" role="tabpanel">
						<div class="product-details-manufacturer">
							<a href="#">
								<img src="images/product-details/1.jpg" alt="Product Manufacturer Image">
							</a>
							<p><span>Reference</span> demo_7</p>
							<p><span>Reference</span> demo_7</p>
						</div>
					</div>
					<div id="reviews" class="tab-pane" role="tabpanel">
						<div class="product-reviews">
							<div class="product-details-comment-block">
								<div class="comment-review">
									<span>Grade</span>
									<ul class="rating">
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li class="no-star"><i class="fa fa-star-o"></i></li>
										<li class="no-star"><i class="fa fa-star-o"></i></li>
									</ul>
								</div>
								<div class="comment-author-infos pt-25">
									<span>HTML 5</span>
									<em>01-12-18</em>
								</div>
								<div class="comment-details">
									<h4 class="title-block">Demo</h4>
									<p>Plaza</p>
								</div>
								<div class="review-btn">
									<a class="review-links" href="#" data-toggle="modal" data-target="#mymodal">Write
										Your
										Review!</a>
								</div>
								<!-- Begin Quick View | Modal Area -->
								<div class="modal fade modal-wrapper" id="mymodal">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-body">
												<h3 class="review-page-title">Write Your Review</h3>
												<div class="modal-inner-area row">
													<div class="col-lg-6">
														<div class="li-review-product">
															<img src="images/product/large-size/3.jpg"
																 alt="Li's Product">
															<div class="li-review-product-desc">
																<p class="li-product-name">Today is a good day Framed
																	poster</p>
																<p>
																	<span>Beach Camera Exclusive Bundle - Includes Two Samsung Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire Room With Exquisite Sound via Ring Radiator Technology. Stream And Control R3 Speakers Wirelessly With Your Smartphone. Sophisticated, Modern Design </span>
																</p>
															</div>
														</div>
													</div>
													<div class="col-lg-6">
														<div class="li-review-content">
															<!-- Begin Feedback Area -->
															<div class="feedback-area">
																<div class="feedback">
																	<h3 class="feedback-title">Our Feedback</h3>
																	<form action="#">
																		<p class="your-opinion">
																			<label>Your Rating</label>
																			<span>
                                                                                    <select class="star-rating">
                                                                                      <option value="1">1</option>
                                                                                      <option value="2">2</option>
                                                                                      <option value="3">3</option>
                                                                                      <option value="4">4</option>
                                                                                      <option value="5">5</option>
                                                                                    </select>
                                                                                </span>
																		</p>
																		<p class="feedback-form">
																			<label for="feedback">Your Review</label>
																			<textarea id="feedback" name="comment"
																					  cols="45"
																					  rows="8"
																					  aria-required="true"></textarea>
																		</p>
																		<div class="feedback-input">
																			<p class="feedback-form-author">
																				<label for="author">Name<span
																						class="required">*</span>
																				</label>
																				<input id="author" name="author"
																					   value=""
																					   size="30" aria-required="true"
																					   type="text">
																			</p>
																			<p class="feedback-form-author feedback-form-email">
																				<label for="email">Email<span
																						class="required">*</span>
																				</label>
																				<input id="email" name="email" value=""
																					   size="30" aria-required="true"
																					   type="text">
																				<span class="required"><sub>*</sub> Required fields</span>
																			</p>
																			<div class="feedback-btn">
																				<a href="#" class="close"
																				   data-dismiss="modal"
																				   aria-label="Close">Close</a>
																				<a href="#">Submit</a>
																			</div>
																		</div>
																	</form>
																</div>
															</div>
															<!-- Feedback Area End Here -->
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- Quick View | Modal Area End Here -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Product Area End Here -->
		<!-- Begin Li's 15 other Product Area -->
		<section class="product-area li-laptop-product pt-30 pb-50">
			<div class="container">
				<div class="row">
					<!-- Begin Li's Section Area -->
					<div class="col-lg-12">
						<div class="li-section-title">
							<h2>
								<span>15 other products in the same category:</span>
							</h2>
						</div>
						<div class="row">
							<div class="product-active owl-carousel">
								<div class="col-lg-12">
									<!-- single-product-wrap start -->
									<div class="single-product-wrap">
										<div class="product-image">
											<a href="single-product.html">
												<img src="images/product/large-size/1.jpg" alt="Li's Product Image">
											</a>
											<span class="sticker">New</span>
										</div>
										<div class="product_desc">
											<div class="product_desc_info">
												<div class="product-review">
													<h5 class="manufacturer">
														<a href="product-details.html">Graphic Corner</a>
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
											</div>
											<div class="add-actions">
												<ul class="add-actions-link">
													<li class="add-cart active"><a href="#">Add to cart</a></li>
													<li><a href="#" title="quick view" class="quick-view-btn"
														   data-toggle="modal" data-target="#exampleModalCenter"><i
															class="fa fa-eye"></i></a></li>
													<li><a class="links-details" href="wishlist.html"><i
															class="fa fa-heart-o"></i></a></li>
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
												<img src="images/product/large-size/2.jpg" alt="Li's Product Image">
											</a>
											<span class="sticker">New</span>
										</div>
										<div class="product_desc">
											<div class="product_desc_info">
												<div class="product-review">
													<h5 class="manufacturer">
														<a href="product-details.html">Studio Design</a>
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
												<h4><a class="product_name" href="single-product.html">Mug Today is a
													good
													day</a></h4>
												<div class="price-box">
													<span class="new-price new-price-2">$71.80</span>
													<span class="old-price">$77.22</span>
													<span class="discount-percentage">-7%</span>
												</div>
											</div>
											<div class="add-actions">
												<ul class="add-actions-link">
													<li class="add-cart active"><a href="#">Add to cart</a></li>
													<li><a href="#" title="quick view" class="quick-view-btn"
														   data-toggle="modal" data-target="#exampleModalCenter"><i
															class="fa fa-eye"></i></a></li>
													<li><a class="links-details" href="wishlist.html"><i
															class="fa fa-heart-o"></i></a></li>
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
												<img src="images/product/large-size/3.jpg" alt="Li's Product Image">
											</a>
											<span class="sticker">New</span>
										</div>
										<div class="product_desc">
											<div class="product_desc_info">
												<div class="product-review">
													<h5 class="manufacturer">
														<a href="product-details.html">Graphic Corner</a>
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
											</div>
											<div class="add-actions">
												<ul class="add-actions-link">
													<li class="add-cart active"><a href="#">Add to cart</a></li>
													<li><a href="#" title="quick view" class="quick-view-btn"
														   data-toggle="modal" data-target="#exampleModalCenter"><i
															class="fa fa-eye"></i></a></li>
													<li><a class="links-details" href="wishlist.html"><i
															class="fa fa-heart-o"></i></a></li>
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
												<img src="images/product/large-size/4.jpg" alt="Li's Product Image">
											</a>
											<span class="sticker">New</span>
										</div>
										<div class="product_desc">
											<div class="product_desc_info">
												<div class="product-review">
													<h5 class="manufacturer">
														<a href="product-details.html">Studio Design</a>
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
												<h4><a class="product_name" href="single-product.html">Mug Today is a
													good
													day</a></h4>
												<div class="price-box">
													<span class="new-price new-price-2">$71.80</span>
													<span class="old-price">$77.22</span>
													<span class="discount-percentage">-7%</span>
												</div>
											</div>
											<div class="add-actions">
												<ul class="add-actions-link">
													<li class="add-cart active"><a href="#">Add to cart</a></li>
													<li><a href="#" title="quick view" class="quick-view-btn"
														   data-toggle="modal" data-target="#exampleModalCenter"><i
															class="fa fa-eye"></i></a></li>
													<li><a class="links-details" href="wishlist.html"><i
															class="fa fa-heart-o"></i></a></li>
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
												<img src="images/product/large-size/5.jpg" alt="Li's Product Image">
											</a>
											<span class="sticker">New</span>
										</div>
										<div class="product_desc">
											<div class="product_desc_info">
												<div class="product-review">
													<h5 class="manufacturer">
														<a href="product-details.html">Graphic Corner</a>
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
											</div>
											<div class="add-actions">
												<ul class="add-actions-link">
													<li class="add-cart active"><a href="#">Add to cart</a></li>
													<li><a href="#" title="quick view" class="quick-view-btn"
														   data-toggle="modal" data-target="#exampleModalCenter"><i
															class="fa fa-eye"></i></a></li>
													<li><a class="links-details" href="wishlist.html"><i
															class="fa fa-heart-o"></i></a></li>
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
												<img src="images/product/large-size/6.jpg" alt="Li's Product Image">
											</a>
											<span class="sticker">New</span>
										</div>
										<div class="product_desc">
											<div class="product_desc_info">
												<div class="product-review">
													<h5 class="manufacturer">
														<a href="product-details.html">Studio Design</a>
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
												<h4><a class="product_name" href="single-product.html">Mug Today is a
													good
													day</a></h4>
												<div class="price-box">
													<span class="new-price new-price-2">$71.80</span>
													<span class="old-price">$77.22</span>
													<span class="discount-percentage">-7%</span>
												</div>
											</div>
											<div class="add-actions">
												<ul class="add-actions-link">
													<li class="add-cart active"><a href="#">Add to cart</a></li>
													<li><a href="#" title="quick view" class="quick-view-btn"
														   data-toggle="modal" data-target="#exampleModalCenter"><i
															class="fa fa-eye"></i></a></li>
													<li><a class="links-details" href="wishlist.html"><i
															class="fa fa-heart-o"></i></a></li>
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
		<!-- Li's Laptop Product Area End Here -->
	</jsp:body>
</mt:guest_template>