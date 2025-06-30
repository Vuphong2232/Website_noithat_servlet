package com.example.servelet_chuan.controller;

import com.example.servelet_chuan.entities.Product;
import com.example.servelet_chuan.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServiceListController", urlPatterns = {"/pages/services"})
public class ServiceListController extends HttpServlet {
    private final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy các tham số từ form tìm kiếm
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String sortType = request.getParameter("sort_type");
        String sortBy = request.getParameter("sort_by");
        String limitParam = request.getParameter("limit");

        int limit = 12;
        try {
            if (limitParam != null && !limitParam.isEmpty()) {
                limit = Integer.parseInt(limitParam);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

        // Gọi service để lấy danh sách sản phẩm theo điều kiện lọc
        List<Product> products = productService.searchProducts(name, category, sortType, sortBy, limit);

        // Gửi dữ liệu sang JSP
        request.setAttribute("products", products);
        request.getRequestDispatcher("/client/pages/services.jsp").forward(request, response);
    }
}
