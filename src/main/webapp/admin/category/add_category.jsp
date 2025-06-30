<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/admin/app/header.jsp" />
<jsp:include page="/admin/app/nav.jsp" />
<jsp:include page="/admin/app/sider.jsp" />

<div class="content-wrapper">
    <div class="content-header">
        <h1>THÊM DANH MỤC</h1>
    </div>
    <div class="content">
        <form id="addCategoryForm">
            <div class="form-group">
                <label>TITLE</label>
                <input type="text" name="title" class="form-control" required />
            </div>
            <div class="form-group">
                <label>STATUS</label>
                <select name="status" class="form-control">
                    <option value="ON">ON</option>
                    <option value="OFF">OFF</option>
                </select>
            </div>
            <button type="submit" id="btnAddCategory" class="btn btn-primary">Thêm danh mục</button>
        </form>
    </div>
</div>

<jsp:include page="/admin/app/footer.jsp" />
<jsp:include page="/admin/app/script.jsp" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
    $(document).ready(function () {
        $("#btnAddCategory").on("click", function (event) {
            event.preventDefault();
            const formData = $("#addCategoryForm").serialize();

            $.ajax({
                url: "${pageContext.request.contextPath}/admin/add-category",
                type: "POST",
                data: formData,
                success: function (data) {
                    if (data.status === 1) {
                        Swal.fire("Thành công", data.msg, "success");
                        setTimeout(() => {
                            window.location.href = "${pageContext.request.contextPath}/admin/category";
                        }, 1000);
                    } else {
                        Swal.fire("Lỗi", data.msg || "Thêm thất bại", "error");
                    }
                },
                error: function () {
                    Swal.fire("Lỗi", "Không thể gửi yêu cầu", "error");
                }
            });
        });
    });
</script>
