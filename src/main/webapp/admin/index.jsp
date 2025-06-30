<%--
  Created by IntelliJ IDEA.
  User: Phong
  Date: 5/17/2025
  Time: 5:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.gson.Gson" %>


<head>
  <jsp:include page="/admin/app/header.jsp" />
</head>
<title>AdminLTE 3 | Dashboard</title>
<!-- Preloader -->
<div class="preloader flex-column justify-content-center align-items-center">
  <img class="animation__shake"
       src="https://img.pikbest.com/png-images/20190918/cartoon-snail-loading-loading-gif-animation_2734139.png!bw700" alt="AdminLTELogo"
       height="300" width="300">
</div>
<!-- Navbar -->
<head>
  <jsp:include page="/admin/app/nav.jsp" />
</head>
<!-- /.navbar -->

<!-- Main Sidebar Container -->
<head>
  <jsp:include page="/admin/app/sider.jsp" />
</head>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Trang Chu</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Thong Ke v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <!-- Tổng đơn hàng -->
          <div class="col-lg-3 col-6">
            <div class="small-box bg-info">
              <div class="inner">
                <h3>${totalOrders}</h3>
                <p>Tổng đơn hàng</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="/admin/orders" class="small-box-footer">
                Xem chi tiết <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>

          <!-- Đơn hàng đã giao -->
          <div class="col-lg-3 col-6">
            <div class="small-box bg-success">
              <div class="inner">
                <h3>${deliveredOrders}</h3>
                <p>Đơn hàng đã giao</p>
              </div>
              <div class="icon">
                <i class="ion ion-checkmark-round"></i>
              </div>
              <a href="/admin/orders" class="small-box-footer">
                Xem chi tiết <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>

          <!-- Đơn hàng chờ xác nhận -->
          <div class="col-lg-3 col-6">
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>${pendingOrders}</h3>
                <p>Chờ xác nhận</p>
              </div>
              <div class="icon">
                <i class="ion ion-clock"></i>
              </div>
              <a href="/admin/orders" class="small-box-footer">
                Xem chi tiết <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>

          <!-- Tổng thành viên -->
          <div class="col-lg-3 col-6">
            <div class="small-box bg-primary">
              <div class="inner">
                <h3>${totalUsers}</h3>
                <p>Tổng thành viên</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="/admin/users" class="small-box-footer">
                Xem chi tiết <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-primary">
              <div class="inner">
                <h3>${totalCate}</h3>
                <p>Tổng danh mục</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer">
                Xem chi tiết <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-primary">
              <div class="inner">
                <h3>${totalProduct}</h3>
                <p>Tổng sản phẩm</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer">
                Xem chi tiết <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>

        </div>
        <div class="card mt-4">
          <div class="card-header">
            <h3 class="card-title">Biểu đồ đơn hàng 30 ngày gần nhất</h3>
          </div>
          <div class="card-body">
            <canvas id="ordersChart" height="100"></canvas>
          </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script>
          document.addEventListener("DOMContentLoaded", function () {
            // Serialize the orderChart data to JSON
            const chartData = <%= new Gson().toJson(request.getAttribute("orderChart")) %> || [];

            const labels = chartData.map(d => d.date);
            const data = chartData.map(d => d.total);

            const ctx = document.getElementById('ordersChart').getContext('2d');
            new Chart(ctx, {
              type: 'bar',
              data: {
                labels: labels,
                datasets: [{
                  label: 'Đơn hàng gần đây',
                  data: data,
                  backgroundColor: 'rgba(54, 162, 235, 0.5)',
                  borderColor: 'rgba(54, 162, 235, 1)',
                  borderWidth: 1
                }]
              },
              options: {
                responsive: true,
                plugins: {
                  title: {
                    display: true,
                    text: 'Orders Statistics - Last 30 Days'
                  }
                },
                scales: {
                  x: {
                    ticks: {
                      maxRotation: 45,
                      minRotation: 45
                    }
                  },
                  y: {
                    beginAtZero: true
                  }
                }
              }
            });
          });
        </script>
      </div>
      <!-- /.row -->
  <!-- /.container-fluid -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->


<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
  <!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<head>
  <jsp:include page="/admin/app/footer.jsp" />
</head>
<!-- jQuery -->
<head>
  <jsp:include page="/admin/app/script.jsp" />
</head>
</body>

</html>
