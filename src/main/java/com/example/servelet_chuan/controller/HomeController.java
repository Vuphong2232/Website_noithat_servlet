package com.example.servelet_chuan.controller;

import com.example.servelet_chuan.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;


@WebServlet(name = "HomeController", urlPatterns = {"/index","/admin/index"})

public class HomeController extends HttpServlet {
    private final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();

        if ("/index".equals(path)) {
            req.setAttribute("products", productService.getAllProducts());
            req.getRequestDispatcher("/client/index.jsp").forward(req, resp);
        } else if ("/admin/index".equals(path)) {
            req.setAttribute("products", productService.getAllProducts());
            req.getRequestDispatcher("/admin/index.jsp").forward(req, resp);
        }


    }


}
