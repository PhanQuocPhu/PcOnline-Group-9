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
				<div class="row" style="justify-content: center">

					<div class="col-sm-12 col-md-12 col-lg-8 col-xs-12">
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
									<div class="col-12" style="display: flex; align-items: center">
										<button class="register-button mt-0 mr-5">Register</button>
										<a href="<c:url value = "/home/login/"/>" class="ml-10 mt-5"> Already have account ? Login now</a>
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