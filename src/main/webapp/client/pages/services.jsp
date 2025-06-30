<%--
  Created by IntelliJ IDEA.
  User: Phong
  Date: 6/8/2025
  Time: 1:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                <img src="/assets/images/banner-bg-03.png" alt="img">
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
                            <li class="breadcrumb-item" aria-current="page">Dịch vụ của chúng tôi</li>
                        </ol>
                    </nav>
                    <h2 class="breadcrumb-title">
                        Dịch vụ của chúng tôi
                    </h2>
                </div>
            </div>
        </div>
    </div>

    <section class="py-110">
        <div class="container">
            <form action="/pages/services" id="searchFormId" method="GET">
                <div class="row justify-content-between mb-40">
                    <div class="col-xl-auto">
                        <div class="d-flex flex-column flex-wrap flex-md-row gap-3">

                            <!-- Input Tên sản phẩm -->
                            <div>
                                <input type="text" class="form-control" placeholder="Tên sản phẩm.." name="name" value="${param.name != null ? param.name : ''}">
                            </div>

                            <!-- Danh mục -->
                            <div>
                                <select name="category" id="category" onchange="this.form.submit()" class="custom-style-select nice-select select-dropdown">
                                    <option value="">Tất cả danh mục</option>
                                    <option value="1" ${param.category == '1' ? 'selected' : ''}>Php Script</option>
                                    <option value="5" ${param.category == '5' ? 'selected' : ''}>Html - Css - JS</option>
                                    <option value="6" ${param.category == '6' ? 'selected' : ''}>Web Designs</option>
                                    <option value="7" ${param.category == '7' ? 'selected' : ''}>Design & Creative</option>
                                    <option value="8" ${param.category == '8' ? 'selected' : ''}>-- Logo Design</option>
                                    <option value="9" ${param.category == '9' ? 'selected' : ''}>React & PHP</option>
                                </select>
                            </div>

                            <!-- Phân loại -->
                            <div>
                                <select name="sort_type" id="sort_type" onchange="this.form.submit()" class="custom-style-select nice-select select-dropdown">
                                    <option value="">Phân loại</option>
                                    <option value="is_new" ${param.sort_type == 'is_new' ? 'selected' : ''}>Sản phẩm mới</option>
                                    <option value="sales_count" ${param.sort_type == 'sales_count' ? 'selected' : ''}>Bán chạy</option>
                                    <option value="is_cheap" ${param.sort_type == 'is_cheap' ? 'selected' : ''}>Giá rẻ</option>
                                    <option value="is_free" ${param.sort_type == 'is_free' ? 'selected' : ''}>Miễn phí</option>
                                </select>
                            </div>

                            <!-- Sắp xếp -->
                            <div>
                                <select name="sort_by" id="sort_by" onchange="this.form.submit()" class="custom-style-select nice-select select-dropdown">
                                    <option value="">Sắp xếp</option>
                                    <option value="a_to_z" ${param.sort_by == 'a_to_z' ? 'selected' : ''}>A Đến Z (ASC)</option>
                                    <option value="z_to_a" ${param.sort_by == 'z_to_a' ? 'selected' : ''}>Z Đến A (DSC)</option>
                                </select>
                            </div>

                            <!-- Số lượng hiển thị -->
                            <div>
                                <select name="limit" id="limit" onchange="this.form.submit()" class="custom-style-select nice-select select-dropdown">
                                    <option value="12" ${param.limit == '12' ? 'selected' : ''}>12 sản phẩm</option>
                                    <option value="24" ${param.limit == '24' ? 'selected' : ''}>24 sản phẩm</option>
                                    <option value="48" ${param.limit == '48' ? 'selected' : ''}>48 sản phẩm</option>
                                </select>
                            </div>

                            <!-- Nút Tìm kiếm -->
                            <div>
                                <button type="submit" class="shop-widget-btn mb-2">
                                    <i class="fas fa-search"></i>
                                    <span>Tìm kiếm</span>
                                </button>
                            </div>

                            <div><a href="/services" class="shop-widget-btn mb-2"><i class="far fa-trash-alt"></i><span>Bỏ lọc</span></a></div>

                        </div>
                    </div>
                </div>
            </form>
                <div class="row">
                    <div id="loading-indicator" class="loading-indicator">
                        <div class="spinner"></div>
                    </div>

                    <div class="row">
                        <c:forEach var="product" items="${products}">
                            <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                                <article class="gigs-grid">
                                    <div class="gigs-img">
                                        <div>
                                            <a href="${pageContext.request.contextPath}/view_product?id=${product.id}">
                                                <img src="${pageContext.request.contextPath}/uploads/${product.img}" class="img-fluid w-100" alt="${product.title}">
                                            </a>
                                        </div>
                                        <div class="fav-selection">
                                            <a href="javascript:void(0);" class="fav-icon" data-product-id="${product.id}">
                                                <i class="fa-regular fa-heart"></i>
                                            </a>
                                        </div>
                                        <div class="user-thumb">
                                            <a href="#">
                                                <img src="/avatars/default.png" alt="User">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gigs-content">
                                        <div class="gigs-info">
                                            <a href="/services?category=${product.id_dm}" class="badge bg-primary-light">Danh mục ${product.id_dm}</a>
                                            <div class="star-rate">
                                                <span><i class="fa-solid fa-star"></i> 0 (0 đánh giá)</span>
                                            </div>
                                        </div>
                                        <div class="gigs-title">
                                            <h4>
                                                <a href="${pageContext.request.contextPath}/view_product?id=${product.id}" class="truncate-2-lines">
                                                        ${product.title}
                                                </a>
                                            </h4>
                                        </div>
                                        <div class="gigs-card-footer">
                                            <div class="gigs-share">
                                                <a href="https://www.facebook.com/sharer/sharer.php?u=${pageContext.request.contextPath}/view_product?id=${product.id}">
                                                    <i class="fa fa-share-alt"></i>
                                                </a>
                                                <span class="badge">Mới đăng</span>
                                            </div>
                                            <h5><fmt:formatNumber value="${product.price}" type="number" groupingUsed="true"/>₫</h5>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </c:forEach>
                    </div>

                    <script>
                        document.addEventListener("DOMContentLoaded", function() {
                            const averageRating = 0;
                            displayStars(averageRating);
                        });
                    </script>
                </div>
            <div class="d-flex justify-content-center">
                <div class="pagination"><a role="button" class="active">1</a><a role="button" onclick="location.href='/services?name=&amp;category=&amp;sort_by=&amp;sort_type=&amp;limit=12&amp;is_featured=&amp;page=2';">2</a><a role="button" onclick="location.href='/services?name=&amp;category=&amp;sort_by=&amp;sort_type=&amp;limit=12&amp;is_featured=&amp;page=2';">»</a></div>
            </div>
        </div>

    </section>
    <!-- Services  End -->
</main>

<footer>
    <jsp:include page="/client/app/footer.jsp" />
</footer>
<jsp:include page="/client/app/script.jsp" />
</body>
</html>
