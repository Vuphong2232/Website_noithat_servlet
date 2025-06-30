<%--
  Created by IntelliJ IDEA.
  User: Phong
  Date: 5/17/2025
  Time: 5:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/bootstrap/js/bootstrap.bundle.min.js">
</script>
<!-- ChartJS -->
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/moment/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/daterangepicker/daterangepicker.js">
</script>
<!-- Tempusdominus Bootstrap 4 -->
<script
        src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js">
</script>
<!-- Summernote -->
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/summernote/summernote-bs4.min.js">
</script>
<!-- overlayScrollbars -->
<script
        src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js">
</script>
<!-- AdminLTE App -->
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/dist/js/pages/dashboard.js"></script>
<script src="https://cdn.datatables.net/v/bs5/dt-2.0.6/datatables.min.js"></script
<script scr="https://code.jquery.com/jquery.js"</script>
<!-- DataTables CSS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
<!-- DataTables JS -->
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script>
  $(document).ready(function () {
    $('.dataTable').DataTable({
      language: {
        "lengthMenu": "Hiển thị _MENU_ dòng mỗi trang",
        "zeroRecords": "Không tìm thấy kết quả",
        "info": "Hiển thị trang _PAGE_ trong tổng _PAGES_",
        "infoEmpty": "Không có dữ liệu",
        "infoFiltered": "(lọc từ _MAX_ dòng)",
        "search": "Tìm kiếm:",
        "paginate": {
          "first": "Đầu",
          "last": "Cuối",
          "next": "Sau",
          "previous": "Trước"
        }
      }
    });
  });
</script>

<script type="text/javascript">
  $('#datatable').DataTable();
</script>
<script>
  $(function() {
    var url = window.location.pathname,
            urlRegExp = new RegExp(url.replace(/\/$/, '') + "$");
    $('ul li a').each(function() {
      if (urlRegExp.test(this.href.replace(/\/$/, ''))) {
        var href = $(this).parents().eq(0).attr('id');
        $(this).addClass('nav-link active');
        $('#' + href).addClass('nav-link active');
        Checkhref(href);
      }
    });
    function Checkhref(href) {
      $('ul li a').each(function() {
        if ($(this).attr('href') == "#" + href) {
          $(this).addClass('nav-link active');
        }
      });
    }
  });
</script>
