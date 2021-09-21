<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="tittle" required="true" type="java.lang.String" %>
<%@ attribute name="content" fragment="true" %>
<!doctype html>
<html class="no-js" lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>Home</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="<c:url value='/assets/guest/images/favicon.png'/>">
		<!-- Material Design Iconic Font-V2.2.0 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/material-design-iconic-font.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/font-awesome.min.css">
		<!-- Font Awesome Stars-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/fontawesome-stars.css">
		<!-- Meanmenu CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/meanmenu.css">
		<!-- owl carousel CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/owl.carousel.min.css">
		<!-- Slick Carousel CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/slick.css">
		<!-- Animate CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/animate.css">
		<!-- Jquery-ui CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/jquery-ui.min.css">
		<!-- Venobox CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/venobox.css">
		<!-- Nice Select CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/nice-select.css">
		<!-- Magnific Popup CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/magnific-popup.css">
		<!-- Bootstrap V4.1.3 Fremwork CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/bootstrap.min.css">
		<!-- Helper CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/helper.css">
		<!-- Main Style CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/style.css">
		<!-- Responsive CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/guest/css/responsive.css">
		<!-- Modernizr js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/vendor/modernizr-2.8.3.min.js"></script>
	</head>
	<body>
		<!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
		<![endif]-->
		<!-- Begin Body Wrapper -->
		<div class="body-wrapper">
			<jsp:invoke fragment="content"/>
			
		</div>
		<!-- Body Wrapper End Here -->

	</body>

	<footer>
		<!-- jQuery-V1.12.4 -->
		<script src="<%=request.getContextPath()%>/assets/guest/js/vendor/jquery-1.12.4.min.js"></script>
		<!-- Popper js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/vendor/popper.min.js"></script>
		<!-- Bootstrap V4.1.3 Fremwork js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/bootstrap.min.js"></script>
		<!-- Ajax Mail js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/ajax-mail.js"></script>
		<!-- Meanmenu js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/jquery.meanmenu.min.js"></script>
		<!-- Wow.min js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/wow.min.js"></script>
		<!-- Slick Carousel js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/slick.min.js"></script>
		<!-- Owl Carousel-2 js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/owl.carousel.min.js"></script>
		<!-- Magnific popup js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/jquery.magnific-popup.min.js"></script>
		<!-- Isotope js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/isotope.pkgd.min.js"></script>
		<!-- Imagesloaded js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/imagesloaded.pkgd.min.js"></script>
		<!-- Mixitup js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/jquery.mixitup.min.js"></script>
		<!-- Countdown -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/jquery.countdown.min.js"></script>
		<!-- Counterup -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/jquery.counterup.min.js"></script>
		<!-- Waypoints -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/waypoints.min.js"></script>
		<!-- Barrating -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/jquery.barrating.min.js"></script>
		<!-- Jquery-ui -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/jquery-ui.min.js"></script>
		<!-- Venobox -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/venobox.min.js"></script>
		<!-- Nice Select js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/jquery.nice-select.min.js"></script>
		<!-- ScrollUp js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/scrollUp.min.js"></script>
		<!-- Main/Activator js -->
		<script src="${pageContext.request.contextPath}/assets/guest/js/main.js"></script>
	</footer>
</html>


