package com.example.servelet_chuan.controller;

import com.example.servelet_chuan.entities.His_products;
import com.example.servelet_chuan.entities.Product;
import com.example.servelet_chuan.entities.Users;
import com.example.servelet_chuan.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

@WebServlet(name = "ProductController", urlPatterns = {
        "/view_product", "/view-product",
        "/admin/add-product", "/admin/edit-product",
        "/admin/delete-product" , "/buy-product"
})

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50
)
public class ProductController extends HttpServlet {
    private final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        String action = req.getParameter("action");

        if ("/view_product".equals(path)) {
            if ("admin".equals(action)) {
                List<Product> list = productService.getAllProducts();
                req.setAttribute("list_product", list);
                req.getRequestDispatcher("/admin/product/view_product.jsp").forward(req, resp);
                return;
            }

            String filter = req.getParameter("filter");
            if ("new".equals(filter)) {
                List<Product> newProducts = productService.getNewestProductsInMinutes(20);
                req.setAttribute("products", newProducts);
                req.getRequestDispatcher("/client/pages/index.jsp").forward(req, resp);
                return;
            }

            // Chi tiết sản phẩm
            String idParam = req.getParameter("id");
            if (idParam == null || idParam.isEmpty()) {
                resp.sendRedirect(req.getContextPath() + "/index");
                return;
            }

            try {
                int productId = Integer.parseInt(idParam);
                Product product = productService.getProductById(productId);

                if (product == null) {
                    resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Sản phẩm không tồn tại");
                    return;
                }

                String listImgStr = product.getList_img();
                String[] listImgs = listImgStr != null ? listImgStr.split("\\n") : new String[0];
                req.setAttribute("listImgs", listImgs);
                req.setAttribute("product", product);

                req.getRequestDispatcher("/client/pages/view_product.jsp").forward(req, resp);
            } catch (NumberFormatException e) {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID không hợp lệ");
            }
        }
        else if ("/admin/edit-product".equals(path)) {
            String idParam = req.getParameter("id");
            if (idParam == null || idParam.isEmpty()) {
                resp.sendRedirect(req.getContextPath() + "/admin/product/view_product.jsp");
                return;
            }

            try {
                int id = Integer.parseInt(idParam);
                Product product = productService.getProductById(id);
                if (product != null) {
                    req.setAttribute("product", product);
                    req.getRequestDispatcher("/admin/product/edit_product.jsp").forward(req, resp);
                } else {
                    resp.sendRedirect(req.getContextPath() + "/admin/product/view_product.jsp");
                }
            } catch (NumberFormatException e) {
                resp.sendRedirect(req.getContextPath() + "/admin/product/view_product.jsp");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json;charset=UTF-8");
        PrintWriter out = resp.getWriter();



        if ("/admin/add-product".equals(path)) {
            try {
                String idDm = req.getParameter("id_dm");
                String title = req.getParameter("title");
                String price = req.getParameter("price");
                String status = req.getParameter("status");

                Part filePart = req.getPart("imgFile");
                String fileName = UUID.randomUUID() + "_" + filePart.getSubmittedFileName();
                String uploadPath = getServletContext().getRealPath("/") + "uploads";
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) uploadDir.mkdir();
                filePart.write(uploadPath + File.separator + fileName);

                Product product = new Product();
                product.setId_dm(idDm);
                product.setTitle(title);
                product.setPrice(price);
                product.setImg(fileName);
                product.setStatus(status);

                boolean success = productService.addProduct(product);
                if (success) {
                    out.print("{\"status\":1,\"msg\":\"Thêm sản phẩm thành công!\"}");
                } else {
                    out.print("{\"status\":0,\"msg\":\"Lỗi khi thêm vào CSDL\"}");
                }

            } catch (Exception e) {
                e.printStackTrace();
                out.print("{\"status\":0,\"msg\":\"Lỗi: " + e.getMessage().replace("\"", "\\\"") + "\"}");
            }
            return;
        }else if ("/admin/edit-product".equals(path)) {
            try {
                int id = Integer.parseInt(req.getParameter("id"));
                String idDm = req.getParameter("id_dm");
                String title = req.getParameter("title");
                String price = req.getParameter("price");
                String status = req.getParameter("status");

                Part filePart = req.getPart("imgFile");
                String fileName = UUID.randomUUID() + "_" + filePart.getSubmittedFileName();
                String uploadPath = getServletContext().getRealPath("/") + "uploads";
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) uploadDir.mkdir();
                filePart.write(uploadPath + File.separator + fileName);

                Product product = new Product();
                product.setId(id);
                product.setId_dm(idDm);
                product.setTitle(title);
                product.setPrice(price);
                product.setImg(fileName);
                product.setStatus(status);

                boolean updated = productService.updateProduct(product);
                if (updated) {
                    out.print("{\"status\":1,\"msg\":\"Cập nhật sản phẩm thành công!\"}");
                } else {
                    out.print("{\"status\":0,\"msg\":\"Lỗi khi cập nhật CSDL\"}");
                }

            } catch (Exception e) {
                e.printStackTrace();
                out.print("{\"status\":0,\"msg\":\"Lỗi: " + e.getMessage().replace("\"", "\\\"") + "\"}");
            }
        }else if ("/admin/delete-product".equals(path)) {
            try {
                int id = Integer.parseInt(req.getParameter("id"));
                boolean deleted = productService.deleteProduct(id);
                if (deleted) {
                    out.print("{\"status\":1,\"msg\":\"Xoá sản phẩm thành công!\"}");
                } else {
                    out.print("{\"status\":0,\"msg\":\"Không xoá được sản phẩm khỏi CSDL\"}");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.print("{\"status\":0,\"msg\":\"Lỗi: " + e.getMessage().replace("\"", "\\\"") + "\"}");
            }
        }else if ("/buy-product".equals(path)) {
            try {
                HttpSession session = req.getSession(false);
                Users user = (Users) session.getAttribute("user");

                if (user == null || user.getUsername() == null || user.getUsername().trim().isEmpty()) {
                    out.print("{\"status\":1,\"msg\":\"Bạn chưa đăng nhập!\"}");
                    return;
                }

                String idSpStr = req.getParameter("id_sp");
                String address = req.getParameter("address");
                String phone = req.getParameter("phone");

                if (idSpStr == null || address == null || phone == null ||
                        idSpStr.trim().isEmpty() || address.trim().isEmpty() || phone.trim().isEmpty()) {
                    out.print("{\"status\":1,\"msg\":\"Vui lòng điền đầy đủ thông tin\"}");
                    return;
                }

                int id_sp = Integer.parseInt(idSpStr);
                Product product = productService.getProductById(id_sp);

                if (product == null) {
                    out.print("{\"status\":1,\"msg\":\"Sản phẩm không tồn tại.\"}");
                    return;
                }

                String currentTime = LocalDateTime.now()
                        .format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

                His_products order = new His_products();
                order.setUsername(user.getUsername());
                order.setId_sp(id_sp);
                order.setPhone(phone);
                order.setAddress(address);
                order.setStatus("choxacnhan");
                order.setTime(currentTime);

                boolean success = productService.saveOrder(order);
                if (success) {
                    out.print("{\"status\":2,\"msg\":\"Đặt hàng thành công\"}");
                } else {
                    out.print("{\"status\":1,\"msg\":\"Giao dịch thất bại.\"}");
                }

            } catch (Exception e) {
                e.printStackTrace();
                out.print("{\"status\":1,\"msg\":\"Lỗi: " + e.getMessage().replace("\"", "\\\"") + "\"}");
            }
        }

    }
}