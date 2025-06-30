package com.example.servelet_chuan.controller;

import com.example.servelet_chuan.entities.His_products;
import com.example.servelet_chuan.service.HisProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Optional;

@WebServlet(name = "UpdateHis", value = "/admin/histories")
public class UpdateHis extends HttpServlet {

    // Hằng số trạng thái
    public static final String STATUS_PENDING = "choxacnhan";
    public static final String STATUS_DELIVERED = "dagiao";
    public static final String STATUS_CANCELLED = "dahuy";

    private final HisProductService hisProductService = new HisProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        // Truy cập danh sách đơn hàng
        if ("admin".equals(action)) {
            request.getRequestDispatcher("/admin/histories/his_product.jsp").forward(request, response);
            return;
        }

        // Truy cập sửa 1 đơn hàng
        String idParam = request.getParameter("id");
        if (idParam == null) {
            response.sendRedirect(request.getContextPath() + "/his_product?action=admin");
            return;
        }

        try {
            int id = Integer.parseInt(idParam);
            Optional<His_products> order = hisProductService.findOrderById(id);
            if (order.isPresent()) {
                request.setAttribute("order", order.get());
                request.getRequestDispatcher("/admin/histories/edit_his.jsp").forward(request, response);
            } else {
                response.sendRedirect(request.getContextPath() + "/his_product?action=admin");
            }
        } catch (NumberFormatException e) {
            response.sendRedirect(request.getContextPath() + "/his_product?action=admin");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        try (PrintWriter out = response.getWriter()) {
            int id = Integer.parseInt(request.getParameter("id"));
            String newStatus = request.getParameter("status").trim();  // Chuẩn hoá input

            System.out.println("Cập nhật trạng thái đơn hàng ID " + id + " thành: [" + newStatus + "]");

            // Kiểm tra hợp lệ trạng thái
            if (!STATUS_PENDING.equals(newStatus) &&
                    !STATUS_DELIVERED.equals(newStatus) &&
                    !STATUS_CANCELLED.equals(newStatus)) {
                out.print("{\"status\":0,\"msg\":\"Trạng thái không hợp lệ\"}");
                return;
            }

            boolean updated = hisProductService.updateOrderStatus(id, newStatus);

            if (updated) {
                out.print("{\"status\":1,\"msg\":\"Cập nhật trạng thái thành công\"}");
            } else {
                out.print("{\"status\":0,\"msg\":\"Không tìm thấy đơn hàng để cập nhật\"}");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().print("{\"status\":0,\"msg\":\"Lỗi khi cập nhật trạng thái\"}");
        }
    }
}
