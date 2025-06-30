<%--
  Created by IntelliJ IDEA.
  User: Phong
  Date: 6/1/2025
  Time: 4:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <section class="py-110">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="settings-card">
                        <div class="settings-card-head">
                            <h4>Thay đổi mật khẩu</h4>
                        </div>
                        <div class="settings-card-body">
                            <div class="row g-4">
                                <div class="col-md-12">
                                    <div>
                                        <label  class="form-label">Mật Khẩu Cũ<span class="text-lime-300">*</span></label>
                                        <input type="password" class="form-control shadow-none" id="oldpass" name="oldpass" required="">
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div>
                                        <label class="form-label">Mật Khẩu Mới<span class="text-lime-300">*</span></label>
                                        <input type="password" class="form-control shadow-none" id="newpass" name="newpass" required="">
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div>
                                        <label  class="form-label">Xác Nhận Mật Khẩu<span class="text-lime-300">*</span></label>
                                        <input type="password" class="form-control shadow-none" id="newpass1" name="newpass1" required="">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <button type="button" id="btnChangePassword" class="btn btn-primary">
                                        Thay Đổi
                                    </button>
                                </div>
                                <script>
                                    $("#btnChangePassword").on("click", function(event) {
                                        event.preventDefault();
                                        $('#btnChangePassword').html('<i class="fa fa-spinner fa-spin"></i> Đang xử lý...').prop('disabled', true);

                                        var myOTPData = {
                                            oldpass: $("#oldpass").val(),
                                            newpass: $("#newpass").val(),
                                            newpass1: $("#newpass1").val()
                                        };

                                        $.post("/auth/profile", myOTPData, function(data) {
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
                                            $('#btnChangePassword').html('Thay Đổi').prop('disabled', false);
                                        }, "json");
                                    });
                                </script>
                            </div>
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
