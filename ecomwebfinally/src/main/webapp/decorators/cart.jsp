<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url value="/resources/fe/" var="URL"></c:url>
<c:url value="/resources/cart/" var="URL1"></c:url>
<!DOCTYPE html>
<html lang="fr">
<head>


<!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name='copyright' content=''>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Title Tag  -->
    <title>Giỏ hàng</title>
     <link rel="stylesheet" type="text/css" href="${URL}styles/bootstrap4/bootstrap.min.css">
    <link href="${URL}plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="${URL}plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="${URL}plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="${URL}plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="${URL}plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="${URL}styles/categories_styles.css">
    <link rel="stylesheet" type="text/css" href="${URL}styles/categories_responsive.css">
    
	<!-- Favicon -->
	<%-- <link rel="icon" type="image/png" href="${URL1}images/favicon.png"> --%>
	<!-- Web Font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
	
	<!-- StyleSheet -->
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="${URL1}css/bootstrap.css">
	<!-- Magnific Popup -->
    <link rel="stylesheet" href="${URL1}css/magnific-popup.min.css">
	<!-- Font Awesome -->
    <link rel="stylesheet" href="${URL1}css/font-awesome.css">
	<!-- Fancybox -->
	<link rel="stylesheet" href="${URL1}css/jquery.fancybox.min.css">
	<!-- Themify Icons -->
    <link rel="stylesheet" href="${URL1}css/themify-icons.css">
	<!-- Nice Select CSS -->
    <link rel="stylesheet" href="${URL1}css/niceselect.css">
	<!-- Animate CSS -->
    <link rel="stylesheet" href="${URL1}css/animate.css">
	<!-- Flex Slider CSS -->
    <link rel="stylesheet" href="${URL1}css/flex-slider.min.css">
	<!-- Owl Carousel -->
    <link rel="stylesheet" href="${URL1}css/owl-carousel.css">
	<!-- Slicknav -->
    <link rel="stylesheet" href="${URL1}css/slicknav.min.css">
	
	<!-- Eshop StyleSheet -->
	<link rel="stylesheet" href="${URL1}css/reset.css">
	<link rel="stylesheet" href="${URL1}style.css">
    <link rel="stylesheet" href="${URL1}css/responsive.css">
  <link rel="stylesheet" type="text/css" href="/resources/css/styles.css">
<!-- Link CSS của Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<!-- Link thư viện jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Link script của Bootstrap -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    

</head>
<body>

 	<%@ include file="/common/cart/header.jsp"%>

	


	<!-- body -->
	<sitemesh:write property='body'></sitemesh:write>
	<!-- body -->

	<!--=== Footer v4 ===-->
	
 	<jsp:include page="/common/cart/footer.jsp"></jsp:include> 

	<!--=== End Footer v4 ===-->
   
    	<!-- Jquery -->
    <script src="${URL1}js/jquery.min.js"></script>
    <script src="${URL1}js/jquery-migrate-3.0.0.js"></script>
	<script src="${URL1}js/jquery-ui.min.js"></script>
	<!-- Popper JS -->
	<script src="${URL1}js/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="${URL1}js/bootstrap.min.js"></script>
	<!-- Color JS -->
	<script src="${URL1}js/colors.js"></script>
	<!-- Slicknav JS -->
	<script src="${URL1}js/slicknav.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="${URL1}js/owl-carousel.js"></script>
	<!-- Magnific Popup JS -->
	<script src="${URL1}js/magnific-popup.js"></script>
	<!-- Fancybox JS -->
	<script src="${URL1}js/facnybox.min.js"></script>
	<!-- Waypoints JS -->
	<script src="${URL1}js/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script src="${URL1}js/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="${URL1}js/nicesellect.js"></script>
	<!-- Ytplayer JS -->
	<script src="${URL1}js/ytplayer.min.js"></script>
	<!-- Flex Slider JS -->
	<script src="${URL1}js/flex-slider.js"></script>
	<!-- ScrollUp JS -->
	<script src="${URL1}js/scrollup.js"></script>
	<!-- Onepage Nav JS -->
	<script src="${URL1}js/onepage-nav.min.js"></script>
	<!-- Easing JS -->
	<script src="${URL1}js/easing.js"></script>
	<!-- Active JS -->
	<script src="${URL1}js/active.js"></script>
    
       <script src="${URL}js/jquery-3.2.1.min.js"></script>
    <script src="${URL}styles/bootstrap4/popper.js"></script>
    <script src="${URL}styles/bootstrap4/bootstrap.min.js"></script>
    <script src="${URL}plugins/Isotope/isotope.pkgd.min.js"></script>
    <script src="${URL}plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
    <script src="${URL}plugins/easing/easing.js"></script>
    <script src="${URL}plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${URL}js/categories_custom.js"></script>
    <script src="${URL}js/single_custom.js "></script>
</body>
</html>