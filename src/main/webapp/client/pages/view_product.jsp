<!-- view_product.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7 col-12">
                    <nav aria-label="breadcrumb" class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="/">Trang chủ</a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">Danh mục</a>
                            </li>
                        </ol>
                    </nav>
                    <h2 class="breadcrumb-title">
                        ${product.title}
                    </h2>
                </div>
                <div class="col-lg-5 col-12">
                    <ul class="breadcrumb-links">
                        <li>
                            <a href="javascript:void(0);" class="fav-icon" data-product-id="49">
                                <span><i class="fa-regular fa-heart"></i></span> Yêu thích
                            </a>
                        </li>
                        <li>
                            <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https://sieuthicode.vn/product/code-tao-qr-code-chuyen-khoan"><span><i class="fa-brands fa-facebook"></i></span>Chia sẽ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <section class="py-110">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-8">
                    <div class="slider-card">
                        <div class="slider service-slider slick-initialized slick-slider">
                            <div class="slick-list draggable">
                                <div class="slick-track">
                                    <div class="service-img-wrap slick-slide">
                                        <img src="${pageContext.request.contextPath}/uploads/${product.img}" class="img-fluid gallery" alt="Ảnh to">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slider slider-nav-thumbnails slick-initialized slick-slider">
                            <div class="slick-list draggable">
                                <div class="slick-track" style="opacity: 1; width: 500px; transform: translate3d(0px, 0px, 0px);">
                                    <c:forEach var="img" items="${listImgs}">
                                        <c:if test="${not empty img}">
                                            <c:choose>
                                                <c:when test="${fn:startsWith(img, 'http')}">
                                                    <img src="${img}" class="img-fluid gallery" />
                                                </c:when>
                                                <c:otherwise>
                                                    <img src="${pageContext.request.contextPath}/uploads/${img}" class="img-fluid gallery" />
                                                </c:otherwise>
                                            </c:choose>
                                        </c:if>
                                    </c:forEach>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 mt-30 mt-xl-0">
                    <aside class="d-flex flex-column gap-4">
                        <div class="service-widget">
                            <div class="service-amt d-flex align-items-center justify-content-between">
                                <p>Giá bán</p>
                                <h2>
                                    <fmt:formatNumber value="${product.price}" type="number" groupingUsed="true"/>
                                    ₫
                                </h2>
                            </div>
                            <ul class="member-info">
                                <li>Địa chỉ <span>Nam Định</span></li>
                                <li>Tổng số sản phẩm <span>${product.id_dm}</span></li>
                                <li>Đã bán <span>Null</span></li>
                            </ul>
                            <a href="#" data-bs-toggle="modal" data-bs-target="#stripePayment" class="btn btn-primary w-100">
                                <i class="fa fa-shopping-cart"></i> Thanh Toán
                            </a>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section>
</main>
<div class="modal fade" id="stripePayment" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Xác nhận thanh toán</h5>
                <button type="button" class="close-btn" data-bs-dismiss="modal"><span>×</span></button>
            </div>
            <div class="modal-body service-modal">
                <div class="row">
                    <div class="col-md-12">
                        <div class="order-status">
                            <div class="order-item">
                                <div class="order-img">
                                    <img src="${pageContext.request.contextPath}/uploads/${product.img}" class="img-fluid gallery" alt="Ảnh to">
                                </div>
                                <div class="order-info">
                                    <h5>${product.title}</h5>
                                    <ul>
                                        <li>ID : #${product.id}</li>
                                        <li>Ngày cập nhật : 2025-06-02 16:30:23</li>
                                    </ul>
                                </div>
                            </div>
                            <h6 class="title">Người bán</h6>
                            <div class="user-details">
                                <div class="user-img">
                                    <img src="https://sieuthicode.vn/upload/avatars/avatar_6721c13da04597.33307485.png" alt="img">
                                </div>
                                <div class="user-info">
                                    <h5>ADMIN <span class="location">Nam Dinh</span></h5>
                                </div>
                            </div>
                            <h6 class="title">Chi tiết thanh toán</h6>
                            <div class="detail-table table-responsive">
                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <td><strong>Giá gốc</strong></td>
                                        <td>
                    <span id="original-price">
                        <fmt:formatNumber value="${product.price}" type="number" groupingUsed="true"/>₫
                    </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>Mã giảm giá</strong></td>
                                        <td>
                                            <input type="text" class="form-control shadow-none" id="coupon" name="coupon"
                                                   placeholder="Nhập mã giảm giá" />
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>

                                <div class="mt-2" style="font-size: 18px;">
                                    <strong>Tổng tiền:</strong>
                                    <span id="total-price">
            <fmt:formatNumber value="${product.price}" type="number" groupingUsed="true"/>₫
        </span>
                                </div>

                                <!-- Hidden fields -->
                                <input type="hidden" id="originalPrice" value="${product.price}" />
                            </div>

                            <!-- Thông tin người mua -->
                            <div class="mt-3">
                                <input type="text" id="phone" class="form-control mb-2" placeholder="Số điện thoại">
                                <input type="text" id="address" class="form-control" placeholder="Địa chỉ nhận hàng">
                            </div>

                            <!-- Nút -->
                            <div class="modal-btn">
                                <div class="row gx-2">
                                    <div class="col-6">
                                        <a href="#" data-bs-dismiss="modal" class="btn btn-secondary w-100 justify-content-center">Đóng</a>
                                    </div>
                                    <div class="col-6">
                                        <button type="button" class="btn btn-primary w-100" id="btnThanhtoan" >Thanh Toán</button>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_sp" value="${product.id}">
                            <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
                            <script>
                                $("#btnThanhtoan").on("click", function(event) {
                                    event.preventDefault();
                                    $('#btnThanhtoan').html('<i class="fa fa-spinner fa-spin"></i> Đang xử lý...').prop('disabled', true);

                                    var myOTPData = {
                                        id_sp: $("#id_sp").val(),
                                        address: $("#address").val(),
                                        phone: $("#phone").val()
                                    };


                                    $.post("${pageContext.request.contextPath}/buy-product", myOTPData, function(data) {
                                        if (data.status === 2) {
                                            Swal.fire({
                                                title: "Thành công",
                                                icon: "success",
                                                text: data.msg,
                                                customClass: {
                                                    confirmButton: "btn btn-primary"
                                                }
                                            });
                                            setTimeout(() => {
                                                window.location.href = "${pageContext.request.contextPath}/his_product";
                                            }, 1500);
                                        } else {
                                            Swal.fire({
                                                title: "Lỗi",
                                                icon: "error",
                                                text: data.msg,
                                                customClass: {
                                                    confirmButton: "btn btn-primary"
                                                }
                                            });
                                        }
                                        $('#btnThanhtoan').html('Thanh Toán').prop('disabled', false);
                                    }, "json");
                                });
                            </script>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <jsp:include page="/client/app/footer.jsp" />
</footer>
<jsp:include page="/client/app/script.jsp" />
</body>
</html>