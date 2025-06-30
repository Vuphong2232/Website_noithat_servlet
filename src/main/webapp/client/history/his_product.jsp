<%--
  Created by IntelliJ IDEA.
  User: Phong
  Date: 6/8/2025
  Time: 12:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/client/app/head.jsp" />
</head>
<body>
<div class="loader-wrapper"><span class="site-loader"></span></div>
<script>
    window.addEventListener('load', () => {
        document.querySelector('.loader-wrapper').style.display = 'none';
    });
</script>
<header><jsp:include page="/client/app/header.jsp" /></header>
<nav><jsp:include page="/client/app/nav.jsp" /></nav>

<main>
    <section class="py-110">
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <h3 class="text-24 fw-bold text-dark-300 mb-2">LỊCH SỬ ĐƠN HÀNG</h3>
                    <!-- Table -->
                    <div class="overflow-x-auto">
                        <div class="w-100">
                            <table class="w-100 dashboard-table table text-nowrap">
                                <thead class="pb-3">
                                <tr>
                                    <th scope="col" class="py-2 px-4">ID</th>
                                    <th scope="col" class="py-2 px-4">SẢN PHẨM</th>
                                    <th scope="col" class="py-2 px-4">GIÁ</th>
                                    <th scope="col" class="py-2 px-4">THỜI GIAN</th>
                                    <th scope="col" class="py-2 px-4">TRẠNG THÁI</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:choose>
                                    <c:when test="${not empty orders}">
                                        <c:forEach var="o" items="${orders}">
                                            <tr>
                                                <td>${o.id}</td>
                                                <td><c:out value="${o.product.title}" /></td>
                                                <td><fmt:formatNumber value="${o.product.price}" type="number" groupingUsed="true"/>₫</td>
                                                <td>${o.time}</td>
                                                <td>${o.status}</td>
                                            </tr>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <tr>
                                            <td colspan="5" class="text-center">Không có dữ liệu</td>
                                        </tr>
                                    </c:otherwise>
                                </c:choose>


                                </tbody>
                            </table>

                        </div>
                        <div class="d-flex justify-content-end">

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
</main>

<footer><jsp:include page="/client/app/footer.jsp" /></footer>
<jsp:include page="/client/app/script.jsp" />
</body>
</html>
