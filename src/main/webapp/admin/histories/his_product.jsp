<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/admin/app/header.jsp" />
<jsp:include page="/admin/app/nav.jsp" />
<jsp:include page="/admin/app/sider.jsp" />

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Danh sách đơn hàng</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                        <li class="breadcrumb-item active">Đơn hàng</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Đơn hàng mới nhất</h3>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered dataTable" id="orderTable">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Khách hàng</th>
                                <th>Sản phẩm</th>
                                <th>Giá</th>
                                <th>Điện thoại</th>
                                <th>Địa chỉ</th>
                                <th>Thời gian</th>
                                <th>Trạng thái</th>
                                <th>Thao tác</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="order" items="${orders}">
                                <tr>
                                    <td>${order.id}</td>
                                    <td>${order.username}</td>
                                    <td>${order.product.title}</td>
                                    <td><fmt:formatNumber value="${order.product.price}" type="number" groupingUsed="true"/>₫</td>
                                    <td>${order.phone}</td>
                                    <td>${order.address}</td>
                                    <td>${order.time}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${order.status == 'choxacnhan'}">
                                                <span class="badge bg-warning text-dark">Chờ xác nhận</span>
                                            </c:when>
                                            <c:when test="${order.status == 'dagiao'}">
                                                <span class="badge bg-success">Đã giao</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="badge bg-danger">Đã huỷ</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/admin/histories?id=${order.id}" class="btn btn-sm btn-primary">
                                            <i class="fas fa-edit"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<jsp:include page="/admin/app/footer.jsp" />
<jsp:include page="/admin/app/script.jsp" />
