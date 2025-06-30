<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/admin/app/header.jsp" />
<jsp:include page="/admin/app/nav.jsp" />
<jsp:include page="/admin/app/sider.jsp" />

<div class="content-wrapper">
  <div class="content-header">
    <h1>Sửa Sản Phẩm</h1>
  </div>

  <div class="content">
    <form action="/demo_war_exploded/admin/edit-product" id="editProductForm" enctype="multipart/form-data">
      <input type="hidden" name="id" value="${product.id}" />

      <div class="form-group">
        <label>Danh mục ID_DM</label>
        <input type="text" name="id_dm" class="form-control" value="${product.id_dm}" required />
      </div>

      <div class="form-group">
        <label>Tên sản phẩm</label>
        <input type="text" name="title" class="form-control" value="${product.title}" required />
      </div>

      <div class="form-group">
        <label>Giá</label>
        <input type="text" name="price" class="form-control" value="${product.price}" required />
      </div>

      <div class="form-group">
        <label>Hình ảnh hiện tại</label><br />
        <img src="${pageContext.request.contextPath}/images/${product.img}" width="120" />
      </div>

      <div class="form-group">
        <label>Thay đổi ảnh (nếu cần)</label>
        <input type="file" name="imgFile" class="form-control" />
      </div>
      <div class="form-group">
        <label>Trạng thái</label>
        <select name="status" class="form-control">
          <option value="ON" ${product.status == 'ON' ? 'selected' : ''}>ON</option>
          <option value="OFF" ${product.status == 'OFF' ? 'selected' : ''}>OFF</option>
        </select>
      </div>

      <button type="submit" id="btnUpdateProduct" class="btn btn-primary">Lưu</button>
    </form>
  </div>
</div>

<jsp:include page="/admin/app/footer.jsp" />
<jsp:include page="/admin/app/script.jsp" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
  $("#btnUpdateProduct").on("click", function(event) {
    event.preventDefault();
    $('#btnUpdateProduct').html('<i class="fa fa-spinner fa-spin"></i> Đang xử lý...').prop('disabled', true);

    const formData = new FormData($('#editProductForm')[0]);

    $.ajax({
      url: "${pageContext.request.contextPath}/admin/edit-product",
      type: "POST",
      data: formData,
      processData: false,
      contentType: false,
      success: function(data) {
        if (data.status === 1) {
          Swal.fire("Thành công", data.msg || "Sản phẩm đã được cập nhật.", "success");
          setTimeout(() => {
            window.location.href = "${pageContext.request.contextPath}/view_product?action=admin";
          }, 1500);
        } else {
          Swal.fire("Lỗi", data.msg || "Cập nhật thất bại.", "error");
        }
      },
      error: function() {
        Swal.fire("Lỗi", "Không thể gửi yêu cầu đến server", "error");
      },
      complete: function() {
        $('#btnUpdateProduct').html('Lưu').prop('disabled', false);
      }
    });
  });
</script>
