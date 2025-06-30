<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/admin/app/header.jsp" />
<jsp:include page="/admin/app/nav.jsp" />
<jsp:include page="/admin/app/sider.jsp" />

<div class="wrapper" bis_skin_checked="1">
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" bis_skin_checked="1" style="min-height: 839px;">
    <!-- Content Header (Page header) -->
    <div class="content-header" bis_skin_checked="1">
      <div class="container-fluid" bis_skin_checked="1">
        <div class="row mb-2" bis_skin_checked="1">
          <div class="col-sm-6" bis_skin_checked="1">
            <h1 class="m-0">Thêm Sản Phẩm</h1>
          </div><!-- /.col -->
          <div class="col-sm-6" bis_skin_checked="1">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Thêm Sản Phẩm</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <section class="content">
      <div class="container-fluid" bis_skin_checked="1">
        <!-- Small boxes (Stat box) -->
        <div class="row" bis_skin_checked="1">
          <div class="col-md-12" bis_skin_checked="1">
            <div class="card" bis_skin_checked="1">
              <div class="card-header" bis_skin_checked="1">
                <h3 class="card-title">THÊM SẢN PHẨM</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body" bis_skin_checked="1">
                <form action="/demo_war_exploded/admin/add-product" id="addProductForm" method="post" enctype="multipart/form-data">
                  <!-- ID_DM -->
                  <div class="form-group">
                    <label>Danh mục ID_DM</label>
                    <input type="text" class="form-control" name="id_dm" placeholder="Nhập ID danh mục">
                  </div>

                  <!-- Tên sản phẩm -->
                  <div class="form-group">
                    <label>Tên sản phẩm</label>
                    <input type="text" class="form-control" name="title" placeholder="Nhập tên sản phẩm">
                  </div>

                  <!-- Giá -->
                  <div class="form-group">
                    <label>Giá</label>
                    <input type="text" class="form-control" name="price" placeholder="Nhập giá">
                  </div>

                  <!-- Hình ảnh -->
                  <div class="form-group">
                    <label>Chọn ảnh sản phẩm</label>
                    <input type="file" class="form-control" name="imgFile" accept="image/*" required>
                  </div>

                  <!-- Trạng thái -->
                  <div class="form-group">
                    <label>Trạng thái</label>
                    <select class="form-control" name="status">
                      <option value="ON">ON</option>
                      <option value="OFF">OFF</option>
                    </select>
                  </div>

                  <button type="submit" id="btnAddProduct" class="btn btn-primary">Lưu</button>
                </form>

              </div>
              <!-- /.card-body -->
              <!-- /end.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark" style="display: none; top: 57px; height: 896px;">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
  <div id="sidebar-overlay" bis_skin_checked="1"></div></div>

<!-- Scripts -->
<jsp:include page="/admin/app/footer.jsp" />
<jsp:include page="/admin/app/script.jsp" />

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
  $("#btnAddProduct").on("click", function(event) {
    event.preventDefault();

    // Hiển thị trạng thái đang xử lý
    $('#btnAddProduct').html('<i class="fa fa-spinner fa-spin"></i> Đang xử lý...').prop('disabled', true);

    const formData = new FormData($('#addProductForm')[0]);

    $.ajax({
      url: "${pageContext.request.contextPath}/admin/add-product",
      type: "POST",
      data: formData,
      processData: false,
      contentType: false,
      success: function(data) {
        // Nếu backend trả JSON: {status: 1, msg: "Thêm thành công"}
        if (data.status === 1) {
          Swal.fire("Thành công", data.msg || "Đã thêm sản phẩm.", "success");
          setTimeout(() => {
            window.location.href = "${pageContext.request.contextPath}/view_product?action=admin";
          }, 1500);
        } else {
          Swal.fire("Lỗi", data.msg || "Thêm sản phẩm thất bại.", "error");
        }
      },
      error: function() {
        Swal.fire("Lỗi", "Không thể gửi yêu cầu đến server", "error");
      },
      complete: function() {
        $('#btnAddProduct').html('Lưu').prop('disabled', false);
      }
    });
  });
</script>




