<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <section class="services-filter py-5">
        <div class="container">
            <div class="rounded-3">
                <div class="row">
                    <div class="col-lg-6 p-3 p-lg-5 m-auto">
                        <div class="login-userset">
                            <div class="login-card">
                                <div class="login-heading">
                                    <h3>Đăng Nhập Tài Khoản</h3>
                                    <p>Điền vào các trường để vào tài khoản của bạn</p>
                                </div>
                                <div class="form-wrap form-focus focused">
                                 <span class="form-icon">
                                 <i class="feather-mail"></i>
                                 </span>
                                    <input type="text" id="username" class="form-control floating">
                                    <label class="focus-label">Tài khoản</label>
                                </div>
                                <div class="form-wrap form-focus pass-group focused">
                                 <span class="form-icon">
                                 <i class="toggle-password feather-eye-off"></i>
                                 </span>
                                    <input type="password" id="password" class="pass-input form-control  floating">
                                    <label class="focus-label">Mật khẩu</label>
                                </div>
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="">
                                        <div class="form-wrap">
                                            <label class="custom_check mb-0">Lưu phiên đăng nhập
                                                <input type="checkbox" id="remember" name="remember">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <button type="button" class="btn btn-primary w-100" id="btnLoginPage">Đăng Nhập</button>
                            </div>
                            <div class="acc-in">
                                <p>Không có tài khoản ?
                                    <a href="/auth/register"> Tạo tài khoản </a>
                                </p>
                            </div>
                            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                            <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
                            <script>
                                $("#btnLoginPage").on("click", function(event) {
                                    event.preventDefault();
                                    $('#btnLoginPage').html('<i class="fa fa-spinner fa-spin"></i> Đang xử lý...').prop('disabled', true);

                                    var myOTPData = {
                                        username: $("#username").val(),
                                        password: $("#password").val()
                                    };

                                    $.post("/auth/login", myOTPData, function(data) {
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
                                                window.location.href = "/index";
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
                                        $('#btnLoginPage').html('Đăng Nhập').prop('disabled', false);
                                    }, "json");
                                });
                            </script>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>


<!-- Main End -->
<!-- Footer  -->
<jsp:include page="/client/app/footer.jsp" />
<div class="back-to-top">
    <a class="back-to-top-icon align-items-center justify-content-center d-flex" href="#top">
        <img src="https://sieuthicode.net/assets/images/arrow-badge-up.svg" alt="img">
    </a>
</div>
<jsp:include page="/client/app/script.jsp" />
</body>
</html>