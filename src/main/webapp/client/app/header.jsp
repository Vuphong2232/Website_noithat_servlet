<%--
  Created by IntelliJ IDEA.
  User: Phong
  Date: 6/1/2025
  Time: 4:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    com.example.servelet_chuan.entities.Users user = (com.example.servelet_chuan.entities.Users) session.getAttribute("user");
%>
<header class="header-primary">
    <div class="container">
        <nav class="navbar navbar-expand-xl justify-content-between">
            <a href="/">
                <img src="/upload/theme/J5KNLMH1O8.png" width="150" alt="" />
            </a>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="d-block d-xl-none">
                        <div class="logo">
                            <a href="/"><img src="/upload/theme/J5KNLMH1O8.png" width="150" alt="" /></a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a
                                class="nav-link"
                                href="/index"
                                role="button"
                                aria-expanded="false">TRANG CHỦ</a>
                    </li>
                    <li class="nav-item">
                        <a
                                class="nav-link"
                                href="/pages/services"
                                role="button"
                                aria-expanded="false">DỊCH VỤ</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a
                                class="nav-link dropdown-toggle"
                                href="#"
                                role="button"
                                data-bs-toggle="dropdown"
                                data-bs-auto-close="outside"
                                aria-expanded="false">NẠP TIỀN</a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="/card" class="dropdown-item"><span>Thẻ cào tự động</span></a>
                            </li>
                            <li>
                                <a href="/bank" class="dropdown-item"><span>Ngân hàng và ví điện tử</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a
                                class="nav-link dropdown-toggle"
                                href="#"
                                role="button"
                                data-bs-toggle="dropdown"
                                data-bs-auto-close="outside"
                                aria-expanded="false">LỊCH SỬ</a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="/his_product" class="dropdown-item"><span>Lịch sử đơn hàng</span></a>
                            </li>
                            <li>
                                <a href="/user/history/vps" class="dropdown-item"><span>Lịch sử cloud vps</span></a>
                            </li>
                            <li>
                                <a href="/user/history/hosting" class="dropdown-item"><span>Lịch sử hosting</span></a>
                            </li>
                            <li>
                                <a href="/user/history/cronjob" class="dropdown-item"><span>Lịch sử cronjob</span></a>
                            </li>
                            <li>
                                <a href="/user/history/proxy/v4" class="dropdown-item"><span>Lịch sử proxy v4</span></a>
                            </li>
                            <li>
                                <a href="/user/history/proxy/v6" class="dropdown-item"><span>Lịch sử proxy v6</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/client/pages/blog.jsp">TIN TỨC</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/client/pages/contact.jsp" >LIÊN HỆ</a>

                    </li>
                </ul>

            </div>
            <div class="navbar-right d-flex align-items-center gap-2">
                <a href="/user/favorites" class="header-widget" title="Sản phẩm yêu thích">
                    <i class="fas fa-heart"></i>
                </a>
                <%
                    String username = (String) session.getAttribute("username");
                %>

                <div class="align-items-center">
                    <div class="dropdown">
                        <button type="button" class="d-flex align-items-center gap-2 header-widget border-0 bg-transparent" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="https://sieuthicode.net/assets/images/avt.png" class="rounded-circle" style="width: 32px; height: 32px;" alt="Avatar">
                            <div class="d-flex flex-column justify-content-center">
                                <% if (user == null) { %>
                                <span class="text-uppercase fw-bold">Đăng nhập</span>
                                <% } else { %>
                                <span class="text-uppercase fw-bold"><%= user.getUsername() %></span>
                                <% } %>
                            </div>
                        </button>

                        <ul class="dashboard-profile dropdown-menu">
                            <% if (user == null) { %>
                            <li>
                                <a class="dashboard-profile-item dropdown-item" href="/auth/login">
                                    <i class="fa fa-right-to-bracket me-1 fs-10"></i>Đăng nhập
                                </a>
                            </li>
                            <li>
                                <a class="dashboard-profile-item dropdown-item" href="/auth/register">
                                    <i class="fa fa-user-plus me-1 fs-10"></i>Đăng ký
                                </a>
                            </li>
                            <% } else { %>
                            <li>
                                <a class="dashboard-profile-item dropdown-item" href="/auth/profile">
                                    <i class="fa fa-user me-1 fs-10"></i>Tài khoản
                                </a>
                            </li>
                            <li>
                                <a class="dashboard-profile-item dropdown-item" href="/logout">
                                    <i class="fa-solid fa-right-from-bracket me-1 fs-10"></i>Đăng xuất
                                </a>
                            </li>
                            <% } %>
                        </ul>
                    </div>
                </div>


                <button class="navbar-toggler d-block d-xl-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="true" aria-label="Toggle navigation">
                    <span></span>
                </button>
            </div>
        </nav>
    </div>
</header>
