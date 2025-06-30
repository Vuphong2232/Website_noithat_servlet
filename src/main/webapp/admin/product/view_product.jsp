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
            <h1 class="m-0">Danh sách sản phẩm</h1>
          </div><!-- /.col -->
          <div class="col-sm-6" bis_skin_checked="1">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">sản phẩm</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid" bis_skin_checked="1">
        <!-- Small boxes (Stat box) -->
        <div class="row" bis_skin_checked="1">
          <div class="col-md-12" bis_skin_checked="1">
            <div class="card" bis_skin_checked="1">
              <div class="card-header" bis_skin_checked="1">
                <h3 class="card-title">Danh sách sản phẩm</h3>
                <div class="text-right" bis_skin_checked="1">
                  <a class="btn btn-primary btn-icon-left m-b-10" href="admin/product/add_product.jsp" type="button"><i class="fas fa-plus-circle mr-1"></i>Thêm sản phẩm</a>
                </div>
              </div>
              <div class="card-body" bis_skin_checked="1">
                <div class="table-responsive" bis_skin_checked="1">
                  <style>
                    .pagination-container {
                      text-align: right;
                      margin-top: 10px;
                    }

                    #datatable1 {
                      margin-bottom: 20px;
                    }
                  </style>

                  <table class="table table-bordered dataTable">
                    <thead>
                    <tr>
                      <th>ID</th>
                      <th>ID_DM</th>
                      <th>Tên sản phẩm</th>
                      <th>Giá</th>
                      <th>Hình ảnh</th>
                      <th>Trạng thái</th>
                      <th>Thao tác</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="product" items="${list_product}">
                      <tr>
                        <td>${product.id}</td>
                        <td>${product.id_dm}</td>
                        <td>${product.title}</td>
                        <td>${product.price}</td>
                        <td>
                          <img src="${pageContext.request.contextPath}/uploads/${product.img}" alt="ảnh" width="80" height="80" />

                        </td>
                        <td>
                          <c:choose>
                            <c:when test="${product.status == '1'}">
                              <span class="badge bg-success">Hiển thị</span>
                            </c:when>
                            <c:otherwise>
                              <span class="badge bg-secondary">ON</span>
                            </c:otherwise>
                          </c:choose>
                        </td>
                        <td>
                          <a href="${pageContext.request.contextPath}/admin/edit-product?id=${product.id}" class="btn btn-sm btn-primary">
                            <i class="fas fa-edit"></i>
                          </a>
                          <a href="#" class="btn btn-sm btn-danger" onclick="confirmDelete(${product.id})">
                            <i class="fas fa-trash"></i>
                          </a>
                        </td>
                      </tr>
                    </c:forEach>
                    </tbody>
                  </table>

                  <div id="pagination-container" class="pagination-container" bis_skin_checked="1"></div>

                  <script>
                    function confirmDelete(productId) {
                      Swal.fire({
                        title: "Bạn có chắc muốn xoá sản phẩm này?",
                        text: "Thao tác không thể hoàn tác!",
                        icon: "warning",
                        showCancelButton: true,
                        confirmButtonText: "Xoá",
                        cancelButtonText: "Hủy"
                      }).then((result) => {
                        if (result.isConfirmed) {
                          fetch("${pageContext.request.contextPath}/admin/delete-product", {
                            method: "POST",
                            headers: {
                              "Content-Type": "application/x-www-form-urlencoded"
                            },
                            body: "id=" + productId
                          })
                                  .then(response => response.json())
                                  .then(data => {
                                    Swal.fire({
                                      icon: data.status === 1 ? "success" : "error",
                                      title: data.status === 1 ? "Thành công" : "Thất bại",
                                      text: data.msg
                                    }).then(() => {
                                      if (data.status === 1) {
                                        window.location.reload();
                                      }
                                    });
                                  })
                                  .catch(error => {
                                    console.error("Lỗi khi xoá:", error);
                                    Swal.fire("Lỗi", "Không thể xoá sản phẩm", "error");
                                  });
                        }
                      });
                    }


                  </script>


                </div>
                <!-- /.row -->
              </div><!-- /.container-fluid -->
            </div><!-- /.container-fluid -->
          </div><!-- /.container-fluid -->
        </div></div></section>
    <!-- /.content -->
  </div>
  <div id="sidebar-overlay" bis_skin_checked="1"></div></div>

<!-- Scripts -->
<jsp:include page="/admin/app/footer.jsp" />
<jsp:include page="/admin/app/script.jsp" />


