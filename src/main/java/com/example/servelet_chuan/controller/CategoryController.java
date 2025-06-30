package com.example.servelet_chuan.controller;

import com.example.servelet_chuan.entities.Category;
import com.example.servelet_chuan.service.CategoryService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "CategoryController", urlPatterns = {
        "/admin/category", "/admin/add-category", "/admin/edit-category", "/admin/delete-category"
})
public class CategoryController extends HttpServlet {
    private final CategoryService service = new CategoryService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        String action = req.getParameter("action");

        if ("/admin/category".equals(path)) {
            List<Category> list = service.getAll();
            req.setAttribute("list", list);
            req.getRequestDispatcher("/admin/category/list_categories.jsp").forward(req, resp);

        } else if ("/admin/edit-category".equals(path)) {
            String idParam = req.getParameter("id");
            if (idParam == null || idParam.isEmpty()) {
                resp.sendRedirect(req.getContextPath() + "/admin/category");
                return;
            }

            try {
                int id = Integer.parseInt(idParam);
                Category category = service.findById(id);
                if (category != null) {
                    req.setAttribute("category", category);
                    req.getRequestDispatcher("/admin/category/edit_category.jsp").forward(req, resp);
                } else {
                    resp.sendRedirect(req.getContextPath() + "/admin/category");
                }
            } catch (NumberFormatException e) {
                resp.sendRedirect(req.getContextPath() + "/admin/category");
            }

        } else if ("/admin/add-category".equals(path)) {
            req.getRequestDispatcher("/admin/category/add_category.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json;charset=UTF-8");
        PrintWriter out = resp.getWriter();

        if ("/admin/add-category".equals(path)) {
            try {
                String title = req.getParameter("title");
                String status = req.getParameter("status");

                Category newCate = new Category(title, status);
                boolean success = service.insert(newCate);

                if (success) {
                    out.print("{\"status\":1,\"msg\":\"Thêm danh mục thành công!\"}");
                } else {
                    out.print("{\"status\":0,\"msg\":\"Thêm thất bại!\"}");
                }

            } catch (Exception e) {
                e.printStackTrace();
                out.print("{\"status\":0,\"msg\":\"Lỗi: " + e.getMessage().replace("\"", "\\\"") + "\"}");
            }

        } else if ("/admin/edit-category".equals(path)) {
            try {
                int id = Integer.parseInt(req.getParameter("id"));
                String title = req.getParameter("title");
                String status = req.getParameter("status");

                Category updateCate = new Category(title, status);
                boolean success = service.update(updateCate, id);

                if (success) {
                    out.print("{\"status\":1,\"msg\":\"Cập nhật danh mục thành công!\"}");
                } else {
                    out.print("{\"status\":0,\"msg\":\"Cập nhật thất bại!\"}");
                }

            } catch (Exception e) {
                e.printStackTrace();
                out.print("{\"status\":0,\"msg\":\"Lỗi: " + e.getMessage().replace("\"", "\\\"") + "\"}");
            }

        } else if ("/admin/delete-category".equals(path)) {
            try {
                int id = Integer.parseInt(req.getParameter("id"));
                boolean success = service.delete(id);

                if (success) {
                    out.print("{\"status\":1,\"msg\":\"Xoá danh mục thành công!\"}");
                } else {
                    out.print("{\"status\":0,\"msg\":\"Không xoá được danh mục khỏi CSDL!\"}");
                }

            } catch (Exception e) {
                e.printStackTrace();
                out.print("{\"status\":0,\"msg\":\"Lỗi: " + e.getMessage().replace("\"", "\\\"") + "\"}");
            }
        }
    }
}
