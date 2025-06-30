<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/admin/app/header.jsp" />
<jsp:include page="/admin/app/nav.jsp" />
<jsp:include page="/admin/app/sider.jsp" />

<div class="content-wrapper">
  <div class="content-header">
    <h1>SỬA DANH MỤC</h1>
  </div>

  <div class="content">
    <form id="editCategoryForm">
      <input type="hidden" name="id" value="${category.id}" />
      <div class="form-group">
        <label>Tên danh mục</label>
        <input type="text" name="title" class="form-control" value="${category.title}" required />
      </div>
      <div class="form-group">
        <label>Trạng thái</label>
        <select name="status" class="form-control">
          <option value="ON" ${category.status == 'ON' ? 'selected' : ''}>ON</option>
          <option value="OFF" ${category.status == 'OFF' ? 'selected' : ''}>OFF</option>
        </select>
      </div>
      <button type="submit" id="btnUpdateCategory" class="btn btn-primary">Lưu</button>
    </form>
  </div>
</div>

<jsp:include page="/admin/app/footer.jsp" />
<jsp:include page="/admin/app/script.jsp" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
  $(document).ready(function () {
    $("#btnUpdateCategory").on("click", function (event) {
      event.preventDefault();
      const formData = $("#editCategoryForm").serialize();

      $.ajax({
        url: "${pageContext.request.contextPath}/admin/edit-category",
        type: "POST",
        data: formData,
        success: function (data) {
          if (data.status === 1) {
            Swal.fire("Thành công", data.msg || "Cập nhật thành công", "success");
            setTimeout(() => {
              window.location.href = "${pageContext.request.contextPath}/admin/category";
            }, 1200);
          } else {
            Swal.fire("Lỗi", data.msg || "Cập nhật thất bại", "error");
          }
        },
        error: function () {
          Swal.fire("Lỗi", "Không thể gửi yêu cầu đến server", "error");
        }
      });
    });
  });
</script>
