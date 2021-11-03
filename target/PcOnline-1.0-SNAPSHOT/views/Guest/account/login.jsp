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
					<div class="col-lg-3"></div>
					<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb-30">
						<!-- Login Form s-->
						<form action="#">
							<div class="login-form">
								<h4 class="login-title">Login</h4>
								<div class="row">
									<div class="col-md-12 col-12 mb-20">
										<label>Email Address*</label>
										<input class="mb-0" type="email" placeholder="Email Address" name="email"
											   required>
									</div>
									<div class="col-12 mb-20">
										<label>Password</label>
										<input class="mb-0" type="password" placeholder="Password" name="password"
											   required>
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
									<div class="col-md-12">
										<P style="text-align: center; border-bottom: 1px solid #898989; line-height: 0.1em; margin: 10px 0 20px;">
											<span style=" background:#fff; padding:0 10px; ">Or</span>
										</P>
									</div>
									<div class="col-md-12 text-center">
										<a href="https://accounts.google.com/o/oauth2/auth?scope=email&
												redirect_uri=http://localhost:8080/home/login/login-google&
												response_type=code&
												client_id=641342109621-ku4sp2tqo4cm9lad2mi5o1ehfmud3l7g.apps.googleusercontent.com&
												approval_prompt=force"
										   class="btn btn-danger text-white col-md-5 p-0" style="font-size: 25px">
											<i class="fa fa-google-plus-square"></i>
										</a>
										<a href="" class="btn btn-primary text-white col-md-5 p-0" style="font-size: 25px">
											<i class="fa fa-facebook-square"></i>
										</a>
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