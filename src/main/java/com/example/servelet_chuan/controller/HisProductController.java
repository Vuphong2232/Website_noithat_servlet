package com.example.servelet_chuan.controller;

import com.example.servelet_chuan.entities.His_products;
import com.example.servelet_chuan.entities.Users;
import com.example.servelet_chuan.service.HisProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/his_product", "/history"})
public class HisProductController extends HttpServlet {
    private final HisProductService hisProductService = new HisProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        HttpSession session = req.getSession(false);

        if ("admin".equals(action)) {
            List<His_products> allOrders = hisProductService.getAllHistory();
            req.setAttribute("orders", allOrders);
            req.getRequestDispatcher("/admin/histories/his_product.jsp").forward(req, resp);
            return;
        }


        Users user = (Users) session.getAttribute("user");

        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/auth/login");
            return;
        }

        String username = user.getUsername();
        List<His_products> userOrders = hisProductService.getHistoryByUsername(username);

        req.setAttribute("orders", userOrders);
        req.getRequestDispatcher("/client/history/his_product.jsp").forward(req, resp);
    }
}