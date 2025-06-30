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
    <section class="py-5 bg-offWhite">
        <div class="container">
            <div class="rounded-3">
                <div class="row">
                    <div class="col-lg-6 p-3 p-lg-5 m-auto">
                        <div class="login-userset">
                            <div class="login-card">
                                <div class="login-heading">
                                    <h3>Đăng Ký Tài Khoản</h3>
                                </div>
                                <c:if test="${not empty error}">
                                    <div class="alert alert-danger mt-3">
                                            ${error}
                                    </div>
                                </c:if>

                                <c:if test="${not empty message}">
                                    <div class="alert alert-success mt-3">
                                            ${message}
                                    </div>
                                </c:if>

                                <form>
                                    <div class="form-wrap form-focus focused">
                                        <input type="text" class="form-control floating" name="username" id="username">
                                        <label class="focus-label">Tài khoản *</label>
                                    </div>
                                    <div class="form-wrap form-focus">
                                        <input type="email" class="form-control floating" name="email" id="email">
                                        <label class="focus-label">Email</label>
                                    </div>
                                    <div class="form-wrap form-focus pass-group focused">
                                        <input type="password" class="pass-input form-control floating" name="password" id="password">
                                        <label class="focus-label">Mật khẩu</label>
                                    </div>
                                    <button type="button" class="btn btn-primary w-100" id="btnRegister">Đăng Ký</button>
                                </form>
                            </div>
                            <div class="acc-in">
                                <p>Bạn đã có tài khoản? <a href="/auth/login">Đăng Nhập</a></p>
                            </div>
                            <script>
                                $("#btnRegister").on("click", function(event) {
                                    event.preventDefault();
                                    $('#btnRegister').html('<i class="fa fa-spinner fa-spin"></i> Đang xử lý...').prop('disabled', true);

                                    var myOTPData = {
                                        username: $("#username").val(),
                                        email: $("#email").val(),
                                        password: $("#password").val()
                                    };

                                    $.post("/register", myOTPData, function(data) {
                                        if (data.status === 2) {
                                            Swal.fire({
                                                title: "Thành công",
                                                icon: "success",
                                                text: data.msg,
                                                customClass: {
                                                    confirmButton: "btn btn-primary"
                                                }
                                            });
                                            setTimeout(function() {
                                                window.location = "/auth/login";
                                            }, 2000);
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
                                        $('#btnRegister').html('Đăng Ký').prop('disabled', false);
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
<jsp:include page="/client/app/footer.jsp" />
<div class="back-to-top">
    <a class="back-to-top-icon align-items-center justify-content-center d-flex" href="#top">
        <img src="https://sieuthicode.net/assets/images/arrow-badge-up.svg" alt="img">
    </a>
</div>
<jsp:include page="/client/app/script.jsp" />
</body>
</html>