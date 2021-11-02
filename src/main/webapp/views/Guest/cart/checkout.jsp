<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<mt:guest_template tittle="Guest">
	<jsp:body>
		<!-- Begin Li's Breadcrumb Area -->
		<div class="breadcrumb-area">
			<div class="container">
				<div class="breadcrumb-content">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li class="active">Checkout</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Li's Breadcrumb Area End Here -->
		<!--Checkout Area Strat-->
		<div class="checkout-area pt-60 pb-30">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="coupon-accordion">
							<!--Accordion Start-->
							<h3>Returning customer? <span id="showlogin">Click here to login</span></h3>
							<div id="checkout-login" class="coupon-content">
								<div class="coupon-info">
									<form action="#">
										<p class="form-row-first">
											<label>Username or email <span class="required">*</span></label>
											<input type="text">
										</p>
										<p class="form-row-last">
											<label>Password <span class="required">*</span></label>
											<input type="text">
										</p>
										<p class="form-row">
											<input value="Login" type="submit">
											<label>
												<input type="checkbox">
												Remember me
											</label>
										</p>
										<p class="lost-password"><a href="#">Lost your password?</a></p>
									</form>
								</div>
							</div>
							<!--Accordion End-->
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-12">
						<form action="#">
							<div class="checkbox-form">
								<h3>Billing Details</h3>
								<div class="row">
									<div class="col-md-12">
										<div class="checkout-form-list">
											<label>Họ và tên<span class="required">*</span></label>
											<input placeholder="" type="text" name="name">
										</div>
									</div>
									<div class="col-md-12">
										<div class="checkout-form-list">
											<label>Địa chỉ <span class="required">*</span></label>
											<input placeholder="Street address" type="text" name="address">
										</div>
									</div>
									<div class="col-md-12">
										<div class="checkout-form-list">
											<label>Thành phố/Tỉnh thành<span class="required">*</span></label>
											<input type="text" name="city">
										</div>
									</div>
									<div class="col-md-12">
										<div class="checkout-form-list">
											<label> Địa chỉ Email <span class="required">*</span></label>
											<input placeholder="" type="email" name="email">
										</div>
									</div>
									<div class="col-md-12">
										<div class="checkout-form-list">
											<label>Số điện thoại <span class="required">*</span></label>
											<input type="text" name="phone">
										</div>
									</div>
								</div>
								<div class="different-address">
									<div class="order-notes">
										<div class="checkout-form-list">
											<label>Order Notes</label>
											<textarea id="checkout-mess" cols="30" rows="10"
													  placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="col-lg-6 col-12">
						<div class="your-order">
							<h3>Your order</h3>
							<div class="your-order-table table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th class="cart-product-name">Sản phẩm</th>
											<th class="cart-product-total">Giá trị</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="order" items="${cart.ordersById}">
											<tr class="cart_item">
												<td class="cart-product-name"> ${order.productsByOrproductid.proname}<strong
														class="product-quantity"> × ${order.orqty}</strong></td>
												<td class="cart-product-total">
													<span class="amount">
														<fmt:formatNumber value="${order.orprice}" type="currency"/>
													</span>
												</td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr class="order-total">
											<th>Tổng giá trị đơn hàng:</th>
											<td>
												<strong>
													<span class="amount"><fmt:formatNumber value="${cart.trtotal}" type="currency"/></span>
												</strong>
											</td>
										</tr>
									</tfoot>
								</table>
							</div>
							<div class="payment-method">
								<div class="payment-accordion">
									<div id="accordion">
										<div class="card">
											<div class="card-header" id="#payment-1">
												<h5 class="panel-title">
													<a class="" data-toggle="collapse" data-target="#collapseOne"
													   aria-expanded="true" aria-controls="collapseOne">
														Thanh toán qua VNPay
													</a>
												</h5>
											</div>
											<div id="collapseOne" class="collapse show" data-parent="#accordion">
												<div class="card-body">
													<p>Thanh toán qua VNPay đi, xịn lắm</p>
												</div>
											</div>
										</div>
									</div>
									<div class="order-button-payment">
										<input value="Place order" type="submit" onclick="">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--Checkout Area End-->
	</jsp:body>
</mt:guest_template>
