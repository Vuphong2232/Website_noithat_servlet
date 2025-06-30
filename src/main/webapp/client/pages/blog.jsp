<%--
  Created by IntelliJ IDEA.
  User: Phong
  Date: 6/8/2025
  Time: 1:09 AM
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
                            <li class="breadcrumb-item" aria-current="page">Blog</li>
                        </ol>
                    </nav>
                    <h2 class="breadcrumb-title">
                        Blog
                    </h2>
                </div>
            </div>
        </div>
    </div>


    <div class="page-content">
        <div class="container">

            <div class="row">
                <div class="col-lg-8">
                    <div class="blog">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="blog-grid">
                                    <div class="blog-img">
                                        <a href="https://sieuthicode.net/assets/images/avt.png"><img src="https://sieuthicode.net/upload/blog/blogSX2V.png" class="img-fluid" alt="img"></a>

                                    </div>
                                    <div class="blog-content">
                                        <div class="user-head">
                                            <div class="user-info">
                                                <a href="javascript:void(0);"><img src="https://sieuthicode.net/assets/images/avt.png" alt="img"></a>
                                                <h6><a href="javascript:void(0);">Lộc Nguyễn</a><span>2024-10-18 11:40:30</span></h6>
                                            </div>
                                            <!-- <div class="badge-text">
                                                <a href="javascript:void(0);" class="badge bg-primary-light"></a>
                                            </div> -->
                                        </div>
                                        <div class="blog-title">
                                            <h3><a href="/blog/tan-dung-dich-vu-tiep-thi-ky-thuat-so-cho-doanh-nghiep-nho">Tận dụng dịch vụ tiếp thị kỹ thuật số cho doanh nghiệp nhỏ</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog-grid">
                                    <div class="blog-img">
                                        <a href="https://sieuthicode.net/assets/images/avt.png"><img src="https://sieuthicode.net/upload/blog/blogYLCS.png" class="img-fluid" alt="img"></a>

                                    </div>
                                    <div class="blog-content">
                                        <div class="user-head">
                                            <div class="user-info">
                                                <a href="javascript:void(0);"><img src="https://sieuthicode.net/assets/images/avt.png" alt="img"></a>
                                                <h6><a href="javascript:void(0);">Lộc Nguyễn</a><span>2024-10-18 11:44:06</span></h6>
                                            </div>
                                            <!-- <div class="badge-text">
                                                <a href="javascript:void(0);" class="badge bg-primary-light"></a>
                                            </div> -->
                                        </div>
                                        <div class="blog-title">
                                            <h3><a href="/blog/tuong-lai-cua-cong-viec-tu-xa-xu-huong-va-du-doan">Tương lai của công việc từ xa: Xu hướng và dự đoán</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog-grid">
                                    <div class="blog-img">
                                        <a href="https://sieuthicode.net/assets/images/avt.png"><img src="https://sieuthicode.net/upload/blog/blogZPMK.png" class="img-fluid" alt="img"></a>

                                    </div>
                                    <div class="blog-content">
                                        <div class="user-head">
                                            <div class="user-info">
                                                <a href="javascript:void(0);"><img src="https://sieuthicode.net/assets/images/avt.png" alt="img"></a>
                                                <h6><a href="javascript:void(0);">Lộc Nguyễn</a><span>2024-10-18 11:44:39</span></h6>
                                            </div>
                                            <!-- <div class="badge-text">
                                                <a href="javascript:void(0);" class="badge bg-primary-light"></a>
                                            </div> -->
                                        </div>
                                        <div class="blog-title">
                                            <h3><a href="/blog/lam-the-nao-de-chon-dung-freelancer-cho-du-an-cua-ban">Làm thế nào để chọn đúng Freelancer cho dự án của bạn</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog-grid">
                                    <div class="blog-img">
                                        <a href="https://sieuthicode.net/assets/images/avt.png"><img src="https://sieuthicode.net/upload/blog/blog2WZR.png" class="img-fluid" alt="img"></a>

                                    </div>
                                    <div class="blog-content">
                                        <div class="user-head">
                                            <div class="user-info">
                                                <a href="javascript:void(0);"><img src="https://sieuthicode.net/assets/images/avt.png" alt="img"></a>
                                                <h6><a href="javascript:void(0);">Lộc Nguyễn</a><span>2025-04-04 13:53:56</span></h6>
                                            </div>
                                            <!-- <div class="badge-text">
                                                <a href="javascript:void(0);" class="badge bg-primary-light"></a>
                                            </div> -->
                                        </div>
                                        <div class="blog-title">
                                            <h3><a href="/blog/them-bot-telegram-bao-bien-dong-so-du">Thêm bot telegram báo biến động số dư</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="d-flex justify-content-center">
                            <div class="pagination">

                            </div>
                        </div>

                    </div>

                </div>

                <div class="col-lg-4 theiaStickySidebar">
                    <div class="blog-sidebar mb-0">

                        <div class="card search-widget">
                            <div class="card-header">
                                <h6><img src="https://sieuthicode.net/assets/images/search-icon.svg" alt="icon">Tìm kiếm</h6>
                            </div>
                            <div class="card-body">
                                <form action="" method="GET">
                                    <div class="form-group search-group mb-0">
                                        <span class="search-icon"><i class="feather-search"></i></span>
                                        <input type="text" class="form-control" name="keyword" value="" placeholder="Từ khóa">
                                    </div>
                                </form>
                            </div>
                        </div>


                        <div class="card category-widget">
                            <div class="card-header">
                                <h6><img src="https://sieuthicode.net/assets/images/category-icon.svg" alt="icon">Danh mục</h6>
                            </div>
                            <div class="card-body">
                                <ul class="categories">
                                    <li><a href="/blogs?category=3">Tin tức <span>3</span></a></li>
                                    <li><a href="/blogs?category=4">Hướng dẫn <span>1</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card recent-widget">
                            <div class="card-header">
                                <h6><img src="https://sieuthicode.net/assets/images/blog-icon.svg" alt="icon">Bài viết nổi bật</h6>
                            </div>
                            <div class="card-body">
                                <ul class="latest-posts">
                                    <li>
                                        <div class="post-thumb">
                                            <a href="/blog/tan-dung-dich-vu-tiep-thi-ky-thuat-so-cho-doanh-nghiep-nho">
                                                <img class="img-fluid" src="https://sieuthicode.net/upload/blog/blogSX2V.png" alt="blog-image">
                                            </a>
                                        </div>
                                        <div class="post-info">
                                            <h6>
                                                <a href="/blog/tan-dung-dich-vu-tiep-thi-ky-thuat-so-cho-doanh-nghiep-nho">Tận dụng dịch vụ tiếp thị kỹ thuật số cho doanh nghiệp nhỏ</a>
                                            </h6>
                                            <div class="blog-user">
                                                <img src="https://sieuthicode.net/assets/images/avt.png" alt="user">
                                                <div class="blog-user-info">
                                                    <p>Lộc Nguyễn</p>
                                                    <p class="xs-text">2024-10-18 11:40:30</p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-thumb">
                                            <a href="/blog/tuong-lai-cua-cong-viec-tu-xa-xu-huong-va-du-doan">
                                                <img class="img-fluid" src="https://sieuthicode.net/upload/blog/blogYLCS.png" alt="blog-image">
                                            </a>
                                        </div>
                                        <div class="post-info">
                                            <h6>
                                                <a href="/blog/tuong-lai-cua-cong-viec-tu-xa-xu-huong-va-du-doan">Tương lai của công việc từ xa: Xu hướng và dự đoán</a>
                                            </h6>
                                            <div class="blog-user">
                                                <img src="https://sieuthicode.net/assets/images/avt.png" alt="user">
                                                <div class="blog-user-info">
                                                    <p>Lộc Nguyễn</p>
                                                    <p class="xs-text">2024-10-18 11:44:06</p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-thumb">
                                            <a href="/blog/lam-the-nao-de-chon-dung-freelancer-cho-du-an-cua-ban">
                                                <img class="img-fluid" src="https://sieuthicode.net/upload/blog/blogZPMK.png" alt="blog-image">
                                            </a>
                                        </div>
                                        <div class="post-info">
                                            <h6>
                                                <a href="/blog/lam-the-nao-de-chon-dung-freelancer-cho-du-an-cua-ban">Làm thế nào để chọn đúng Freelancer cho dự án của bạn</a>
                                            </h6>
                                            <div class="blog-user">
                                                <img src="https://sieuthicode.net/assets/images/avt.png" alt="user">
                                                <div class="blog-user-info">
                                                    <p>Lộc Nguyễn</p>
                                                    <p class="xs-text">2024-10-18 11:44:39</p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<footer>
    <jsp:include page="/client/app/footer.jsp" />
</footer>
<jsp:include page="/client/app/script.jsp" />
</body>
</html>
