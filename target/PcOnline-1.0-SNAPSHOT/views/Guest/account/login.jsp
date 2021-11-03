<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<mt:guest_template tittle="Login">
	<jsp:body>
		<div class="breadcrumb-area">
			<div class="container">
				<div class="breadcrumb-content">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li class="active">Login</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Li's Breadcrumb Area End Here -->
		<!-- Begin Login Content Area -->
		<div class="page-section mb-60">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb-30">
						<!-- Login Form s-->
						<form action="#">
							<div class="login-form">
								<h4 class="login-title">Login</h4>
								<div class="row">
									<div class="col-md-12 col-12 mb-20">
										<label>Email Address*</label>
										<input class="mb-0" type="email" placeholder="Email Address" name="email" required>
									</div>
									<div class="col-12 mb-20">
										<label>Password</label>
										<input class="mb-0" type="password" placeholder="Password" name="password" required>
									</div>
									<div class="col-md-8">
										<div class="check-box d-inline-block ml-0 ml-md-2 mt-10">
											<input type="checkbox" id="remember_me" name="rem">
											<label for="remember_me">Remember me</label>
										</div>
									</div>
									<div class="col-md-4 mt-10 mb-20 text-left text-md-right">
										<a href="#"> Forgotten pasword?</a>
									</div>
									<div class="col-md-12">
										<button type="submit" class="register-button mt-0">Login</button>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
						<form action="#">
							<div class="login-form">
								<h4 class="login-title">Register</h4>
								<div class="row">
									<div class="col-md-6 col-12 mb-20">
										<label>First Name</label>
										<input class="mb-0" type="text" placeholder="First Name">
									</div>
									<div class="col-md-6 col-12 mb-20">
										<label>Last Name</label>
										<input class="mb-0" type="text" placeholder="Last Name">
									</div>
									<div class="col-md-12 mb-20">
										<label>Email Address*</label>
										<input class="mb-0" type="email" placeholder="Email Address">
									</div>
									<div class="col-md-6 mb-20">
										<label>Password</label>
										<input class="mb-0" type="password" placeholder="Password">
									</div>
									<div class="col-md-6 mb-20">
										<label>Confirm Password</label>
										<input class="mb-0" type="password" placeholder="Confirm Password">
									</div>
									<div class="col-12">
										<button class="register-button mt-0">Register</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- Login Content Area End Here -->
	</jsp:body>
</mt:guest_template>