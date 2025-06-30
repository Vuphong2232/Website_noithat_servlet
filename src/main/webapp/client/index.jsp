<%--
  Created by IntelliJ IDEA.
  User: Phong
  Date: 6/1/2025
  Time: 4:06 PM
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
<div class="loader-wrapper">
    <span class="site-loader"> </span>
</div>
<script>
    window.addEventListener('load', function() {
        var loadingOverlay = document.querySelector('.loader-wrapper');
        loadingOverlay.style.display = 'none';
    });
</script>
<!-- Menu Start -->
<header>
    <jsp:include page="/client/app/header.jsp" />
</header>
<nav >
    <jsp:include page="/client/app/nav.jsp" />
</nav>
<main>
    <section class="services-filter py-5 service4 _relative sp bg-cover" style="background-image: url(https://sieuthicode.net/assets/images/service4-bg.webp);">
        <div class="container">
            <div class="row mt-30 hero">
                <div class="col-sm-6 col-lg-4 col-xl-2 col-6 ">
                    <div class="service4-box mt-70">
                        <div class="icon">
                            <img src="https://sieuthicode.net/assets/images/code.png" alt="Website Icon">
                        </div>
                        <div class="heading4">
                            <h4><a href="/services">Code Website</a></h4>
                            <p class="mt-16">Dịch vụ thiết kế và phát triển website chuyên nghiệp, từ giao diện tùy chỉnh đến tích hợp chức năng phức tạp, đáp ứng mọi nhu cầu kinh doanh.</p>
                            <div class="button mt-20">
                                <a href="/services" class="btn_theme9 btn_theme_active9 mt_40 wow fadeInDown" data-wow-duration="0.8s">Xem Ngay <span style="top: 51.866px; left: 39.6125px;"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-2 col-6 ">
                    <div class="service4-box mt-70">
                        <div class="icon">
                            <img src="https://sieuthicode.net/assets/images/proxy.png" alt="Proxy Icon">
                        </div>
                        <div class="heading4">
                            <h4><a href="/proxy">Proxy V4</a></h4>
                            <p class="mt-16">Dịch vụ Proxy IPv4 chất lượng cao, đảm bảo ẩn danh và bảo mật khi truy cập internet. Hỗ trợ nhiều mục đích như SEO, scraping hoặc quản lý mạng xã hội.</p>
                            <div class="button mt-20">
                                <a href="/proxy" class="btn_theme9 btn_theme_active9 mt_40 wow fadeInDown" data-wow-duration="0.8s">Xem Ngay <span style="top: 51.866px; left: 39.6125px;"></span></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-4 col-xl-2 col-6 ">
                    <div class="service4-box mt-70">
                        <div class="icon">
                            <img src="https://sieuthicode.net/assets/images/domain-registration.png" alt="Domain Icon">
                        </div>
                        <div class="heading4">
                            <h4><a href="/domain">Tên miền giá rẻ</a></h4>
                            <p class="mt-16">Đăng ký tên miền với chi phí thấp, hỗ trợ nhiều đuôi miền phổ biến như .com, .vn, .org. Dễ dàng quản lý và gia hạn, đảm bảo quyền sở hữu tên miền của bạn.</p>
                            <div class="button mt-20">
                                <a href="/domain" class="btn_theme9 btn_theme_active9 mt_40 wow fadeInDown" data-wow-duration="0.8s">Xem Ngay <span style="top: 51.866px; left: 39.6125px;"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-2 col-6 ">
                    <div class="service4-box mt-70">
                        <div class="icon">
                            <img src="https://sieuthicode.net/assets/images/cloud-server.png" alt="Cloud Hosting Icon">
                        </div>
                        <div class="heading4">
                            <h4><a href="/hosting">Cloud Hosting</a></h4>
                            <p class="mt-16">Dịch vụ lưu trữ đám mây với hiệu suất cao, tài nguyên linh hoạt và khả năng mở rộng. Đảm bảo tốc độ tải nhanh và uptime tối ưu cho website của bạn.</p>
                            <div class="button mt-20">
                                <a href="/hosting" class="btn_theme9 btn_theme_active9 mt_40 wow fadeInDown" data-wow-duration="0.8s">Xem Ngay <span style="top: 51.866px; left: 39.6125px;"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-2 col-6 ">
                    <div class="service4-box mt-70">
                        <div class="icon">
                            <img src="https://sieuthicode.net/assets/images/vps.png" alt="VPS Icon">
                        </div>
                        <div class="heading4">
                            <h4><a href="/cloudvps">Server VPS</a></h4>
                            <p class="mt-16">Máy chủ riêng đám mây với tài nguyên độc lập, cấu hình mạnh mẽ. Phù hợp cho các ứng dụng đòi hỏi hiệu suất cao và bảo mật tối ưu.</p>
                            <div class="button mt-20">
                                <a href="/cloudvps" class="btn_theme9 btn_theme_active9 mt_40 wow fadeInDown" data-wow-duration="0.8s">Xem Ngay <span style="top: 51.866px; left: 39.6125px;"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-2 col-6 ">
                    <div class="service4-box mt-70">
                        <div class="icon">
                            <img src="https://sieuthicode.net/assets/images/job.png" alt="Cronjob Icon">
                        </div>
                        <div class="heading4">
                            <h4><a href="/cronjob">Cronjob</a></h4>
                            <p class="mt-16">Tự động hóa các tác vụ định kỳ với dịch vụ Cronjob. Dễ dàng thiết lập lịch trình cho các công việc như sao lưu, gửi email hoặc cập nhật dữ liệu.</p>
                            <div class="button mt-20">
                                <a href="/cronjob" class="btn_theme9 btn_theme_active9 mt_40 wow fadeInDown" data-wow-duration="0.8s">Xem Ngay <span style="top: 51.866px; left: 39.6125px;"></span></a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="container mt-4">
            <div class="row mb-40 justify-content-between align-items-end">
                <div class="col-auto">
                    <h2 class="fw-bold section-title text-white">Sản phẩm nổi bật</h2>
                    <p class="section-desc text-white">
                        Dịch vụ tốt nhất cho công việc của bạn
                    </p>
                </div>
                <div class="col-auto mt-30 mt-xl-0">
                    <div class="filters-btns d-flex flex-wrap align-items-center gap-3">
                        <button class="service-filter-btn active" data-filter=".category1">
                            Tất cả
                        </button>
                        <button class="service-filter-btn "
                                onclick="window.location.href='${pageContext.request.contextPath}/index?filter=new'">
                            Sản phẩm mới
                        </button>
                        <button class="service-filter-btn" data-filter=".category3">
                            Bán chạy
                        </button>
                        <button class="service-filter-btn" data-filter=".category4">
                            Giá rẻ
                        </button>
                        <button class="service-filter-btn" data-filter=".category5">
                            Miễn phí
                        </button>
                    </div>
                </div>
            </div>
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

        </div>
    </section>
</main>
<div class="modal new-modal fade" id="modal_notification" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Thông báo</h5>
                <button type="button" class="close-btn" data-bs-dismiss="modal"><span>×</span></button>
            </div>
            <div class="modal-body service-modal">
                <p style="text-align:center">Nh&oacute;m zalo ch&iacute;nh thức:&nbsp;<a href="https://zalo.me/g/cbzsbc549">https://zalo.me/g/cbzsbc549</a>&nbsp;</p>

                <p style="text-align:center">Telegram:&nbsp;<a href="https://t.me/locdzme">https://t.me/locdzme</a></p>

                <p style="text-align:center">Thu&ecirc; api bank:&nbsp;<strong><a href="https://api.sieuthicode.net/login"><span style="color:#e74c3c">https://api.sieuthicode.net/login</span></a></strong></p>

                <p style="text-align:center">Thu&ecirc; cron:&nbsp;<strong><a href="https://cron.sieuthicode.net/"><span style="color:#16a085">https://cron.sieuthicode.net/</span></a></strong></p>

                <p style="text-align:center">Thu&ecirc; giải captcha:&nbsp;<strong><a href="https://ecaptcha.sieuthicode.net/"><span style="color:#2980b9">https://ecaptcha.sieuthicode.net/</span></a></strong></p>

                <p style="text-align:center">Ch&uacute;ng t&ocirc;i b&aacute;n miền ch&iacute;nh h&atilde;ng, qu&yacute; kh&aacute;ch mua th&igrave; li&ecirc;n hệ&nbsp;<a href="https://zalo.me/0978364572">https://zalo.me/0978364572</a></p>

                <h2 style="text-align:center"><span style="color:#e74c3c"><strong>Cảnh B&aacute;o Giả Mạo T&agrave;i Khoản Telegram b&ecirc;n m&igrave;nh đi lừa đảo mọi người ch&uacute; &yacute;</strong></span></h2>

                <p style="text-align:center"><img alt="" src="https://i.postimg.cc/ygKG6Jyr/image-2.jpg" /></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="dontShowAgainBtn">Không hiển thị lại trong 2 giờ</button>
            </div>
        </div>
    </div>
</div>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        var modal = document.getElementById('modal_notification');
        var dontShowAgainBtn = document.getElementById('dontShowAgainBtn');
        var modalClosedTime = localStorage.getItem('modalClosedTime');
        if (!modalClosedTime || (Date.now() - parseInt(modalClosedTime) > 2 * 60 * 60 * 1000)) {
            var bootstrapModal = new bootstrap.Modal(modal);
            bootstrapModal.show();
        }
        dontShowAgainBtn.addEventListener('click', function() {
            localStorage.setItem('modalClosedTime', Date.now());
            var bootstrapModal = bootstrap.Modal.getInstance(modal);
            bootstrapModal.hide();
        });
    });
    document.addEventListener("DOMContentLoaded", function() {
        const filterButtons = document.querySelectorAll('.service-filter-btn');
        const gridItems = document.querySelectorAll('.grid-item');

        filterButtons.forEach(button => {
            button.addEventListener('click', function() {
                filterButtons.forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');
                const filterValue = this.getAttribute('data-filter');
                gridItems.forEach(item => {
                    if (filterValue === '.category1' || item.classList.contains(filterValue.replace('.', ''))) {
                        item.style.display = 'block';
                    } else {
                        item.style.display = 'none';
                    }
                });
            });
        });
    });
</script>
<script>
    function _0x1fef(_0xe76adc,_0x2e6d6c){const _0x2b5b38=_0x2b5b();return _0x1fef=function(_0x1fef3e,_0x55928e){_0x1fef3e=_0x1fef3e-0x1ee;let _0x49da81=_0x2b5b38[_0x1fef3e];return _0x49da81;},_0x1fef(_0xe76adc,_0x2e6d6c);}const _0x6cbedf=_0x1fef;function _0x2b5b(){const _0x21ea75=['7210075lEIHPa','error','1737392weclRe','querySelector','find','.service-filter-btn','440652eIokbT','8222346pWCTqc','654661yiIZmp','ready','14FDjepk','click','msg','/model/favorite','toFixed','6NwQUcH','img.lazyLoad','16ZFKzjA','fa-regular','round','status','show','parse','248470BjVMjE','checked','#numFavorites','success','.rating','added','text','removeClass','getElementById','fadeIn','325970fmIPTv','forEach','textContent','225Jnywgp','fa-solid','fav_count','#loading-indicator','addClass','data'];_0x2b5b=function(){return _0x21ea75;};return _0x2b5b();}(function(_0x287305,_0x58b052){const _0x3ed8db=_0x1fef,_0x50ec38=_0x287305();while(!![]){try{const _0x25546c=-parseInt(_0x3ed8db(0x206))/0x1+-parseInt(_0x3ed8db(0x1ef))/0x2*(parseInt(_0x3ed8db(0x215))/0x3)+-parseInt(_0x3ed8db(0x211))/0x4+-parseInt(_0x3ed8db(0x20f))/0x5*(-parseInt(_0x3ed8db(0x1f4))/0x6)+-parseInt(_0x3ed8db(0x217))/0x7*(parseInt(_0x3ed8db(0x1f6))/0x8)+parseInt(_0x3ed8db(0x209))/0x9*(parseInt(_0x3ed8db(0x1fc))/0xa)+parseInt(_0x3ed8db(0x216))/0xb;if(_0x25546c===_0x58b052)break;else _0x50ec38['push'](_0x50ec38['shift']());}catch(_0x203898){_0x50ec38['push'](_0x50ec38['shift']());}}}(_0x2b5b,0xcbe34),$(function(){const _0xc0f1a0=_0x1fef;$(_0xc0f1a0(0x1f5))['lazyload']({'effect':_0xc0f1a0(0x205)});}));function displayStars(_0x2012d3){const _0x3a4480=_0x1fef,_0x159156=document[_0x3a4480(0x212)](_0x3a4480(0x200)),_0x54e935=document[_0x3a4480(0x204)]('averageRating'),_0x336d9a=Math[_0x3a4480(0x1f8)](_0x2012d3);_0x54e935[_0x3a4480(0x208)]=_0x2012d3[_0x3a4480(0x1f3)](0x1);const _0x24ed71=_0x159156['querySelectorAll']('input[name=\x22rating\x22]');_0x24ed71[_0x3a4480(0x207)](_0x427a48=>_0x427a48[_0x3a4480(0x1fd)]=![]);const _0x560ed0=_0x159156['querySelector']('#stars'+_0x336d9a);_0x560ed0&&(_0x560ed0[_0x3a4480(0x1fd)]=!![]);}$(document)[_0x6cbedf(0x1ee)](function(){const _0x4a4936=_0x6cbedf;$(_0x4a4936(0x214))['on'](_0x4a4936(0x1f0),function(){const _0x14b85a=_0x4a4936;$(_0x14b85a(0x20c))[_0x14b85a(0x20d)](_0x14b85a(0x1fa)),setTimeout(function(){const _0x5bfe6d=_0x14b85a;$('#loading-indicator')[_0x5bfe6d(0x203)](_0x5bfe6d(0x1fa));},0x12c);});}),$(document)['on'](_0x6cbedf(0x1f0),'.fav-icon',function(){const _0x534452=_0x6cbedf;var _0x317940=$(this)[_0x534452(0x20e)]('product-id'),_0x4f7b31=$(this)[_0x534452(0x213)]('i');$['ajax']({'url':_0x534452(0x1f2),'type':'POST','data':{'product_id':_0x317940,'csrf_token':csrf_token},'success':function(_0x3d3409){const _0x47f2df=_0x534452;var _0x1c0310=JSON[_0x47f2df(0x1fb)](_0x3d3409);if(_0x1c0310[_0x47f2df(0x1f9)]===_0x47f2df(0x201))_0x4f7b31[_0x47f2df(0x203)](_0x47f2df(0x1f7))[_0x47f2df(0x20d)]('fa-solid'),$(_0x47f2df(0x1fe))[_0x47f2df(0x202)](_0x1c0310[_0x47f2df(0x20b)]),showMessage(_0x1c0310[_0x47f2df(0x1f1)],_0x47f2df(0x1ff));else _0x1c0310[_0x47f2df(0x1f9)]==='removed'?(_0x4f7b31[_0x47f2df(0x203)](_0x47f2df(0x20a))[_0x47f2df(0x20d)](_0x47f2df(0x1f7)),$(_0x47f2df(0x1fe))[_0x47f2df(0x202)](_0x1c0310[_0x47f2df(0x20b)]),showMessage(_0x1c0310[_0x47f2df(0x1f1)],'success')):showMessage(_0x1c0310[_0x47f2df(0x1f1)],_0x47f2df(0x210));},'error':function(){const _0x3bce69=_0x534452;showMessage('Có\x20lỗi\x20xảy\x20ra.\x20Vui\x20lòng\x20thử\x20lại\x20sau!',_0x3bce69(0x210));}});});
</script>
<!-- Logout Modal -->
<div class="modal new-modal fade" id="logoutModal" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Xác nhận đăng xuất</h5>
                <button type="button" class="close-btn" data-bs-dismiss="modal"><span>×</span></button>
            </div>
            <div class="modal-body service-modal">
                <div class="row">
                    <div class="col-md-12">
                        Bạn có chắc chắn muốn Đăng xuất không?
                    </div>

                </div>
            </div>
            <div class="modal-footer">
                <div class="btn-item">
                    <a href="#" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</a>
                    <a href="/logout" class="btn btn-primary" type="submit">Đăng xuất</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer  -->
<footer>
    <jsp:include page="/client/app/footer.jsp" />
</footer>
<div class="back-to-top">
    <a class="back-to-top-icon align-items-center justify-content-center d-flex" href="#top">
        <img src="https://sieuthicode.net/assets/images/arrow-badge-up.svg" alt="img">
    </a>
</div>

<script>
    <jsp:include page="/client/app/script.jsp" />
</script>


</body>

</html>