<%--
  Created by IntelliJ IDEA.
  User: Phong
  Date: 6/8/2025
  Time: 12:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/client/app/head.jsp" />
</head>
<body>
<div class="loader-wrapper"><span class="site-loader"></span></div>
<script>
    window.addEventListener('load', () => {
        document.querySelector('.loader-wrapper').style.display = 'none';
    });
</script>
<header>
    <jsp:include page="/client/app/header.jsp" />
</header>
<nav>
    <jsp:include page="/client/app/nav.jsp" />
</nav>

<main>
    <div class="w-breadcrumb-area">
        <div class="breadcrumb-img">
            <div class="breadcrumb-left">
                <img src="https://sieuthicode.net/assets/images/banner-bg-03.png" alt="img">
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-12">
                    <nav aria-label="breadcrumb" class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="/">Trang chủ</a>
                            </li>
                            <li class="breadcrumb-item" aria-current="page">Liên hệ</li>
                        </ol>
                    </nav>
                    <h2 class="breadcrumb-title">
                        Liên hệ
                    </h2>
                </div>
            </div>
        </div>
    </div>


    <section class="contact-section">

        <div class="contact-bottom bg-white">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex">
                        <div class="contact-grid w-100">
                            <div class="contact-content">
                                <div class="contact-icon">
                                    <span>
                                        <img src="https://sieuthicode.net/assets/images/contact-mail.svg" alt="Icon">
                                    </span>
                                </div>
                                <div class="contact-details">
                                    <h6>Email Address</h6>
                                    <p><a href="javascript:void(0);"><span>cskh.phongdaptrai@gmail.com</span></a></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 d-flex">
                        <div class="contact-grid w-100">
                            <div class="contact-content">
                                <div class="contact-icon">
                                    <span>
                                        <img src="https://sieuthicode.net/assets/images/contact-phone.svg" alt="Icon">
                                    </span>
                                </div>
                                <div class="contact-details">
                                    <h6>Phone Number</h6>
                                    <p>+84 334183254</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>


<footer>
    <jsp:include page="/client/app/footer.jsp" />
</footer>
<jsp:include page="/client/app/script.jsp" />
</body>
</html>
