<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/admin/app/header.jsp" />
<jsp:include page="/admin/app/nav.jsp" />
<jsp:include page="/admin/app/sider.jsp" />

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <h1>Cập nhật trạng thái đơn hàng #${order.id}</h1>
        </div>
    </div>

    <section class="content">
        <div class="container-fluid">
            <form method="post" action="${pageContext.request.contextPath}/admin/histories">
            <input type="hidden" name="id" value="${order.id}" />

                <div class="form-group">
                    <label>Trạng thái:</label>
                    <select name="status" class="form-control">
                        <option value="choxacnhan" ${order.status == 'choxacnhan' ? 'selected' : ''}>Chờ xác nhận</option>
                        <option value="dagiao" ${order.status == 'dagiao' ? 'selected' : ''}>Đã giao</option>
                        <option value="dahuy" ${order.status == 'dahuy' ? 'selected' : ''}>Đã huỷ</option>
                    </select>

                </div>

                <button type="submit" class="btn btn-success">Cập nhật</button>
                <a href="${pageContext.request.contextPath}/admin/histories" class="btn btn-secondary">Hủy</a>
            </form>
        </div>
    </section>
</div>

<jsp:include page="/admin/app/footer.jsp" />
<jsp:include page="/admin/app/script.jsp" />

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    $("form").on("submit", function (e) {
        e.preventDefault();
        const form = $(this);

        $.ajax({
            type: "POST",
            url: form.attr("action"),
            data: form.serialize(),
            success: function (res) {
                if (res.status === 1) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Thành công!',
                        text: res.msg
                    }).then(() => {
                        window.location.href = '${pageContext.request.contextPath}/admin/histories';
                    });
                } else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Thất bại!',
                        text: res.msg
                    });
                }
            },
            error: function () {
                Swal.fire({
                    icon: 'error',
                    title: 'Lỗi hệ thống!',
                    text: 'Vui lòng thử lại sau.'
                });
            }
        });
    });
</script>
