package com.example.servelet_chuan.service;
import com.example.servelet_chuan.config.DBConnect;
import com.example.servelet_chuan.entities.His_products;
import com.example.servelet_chuan.entities.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ProductService {
    public List<Product> getAllProducts() {
        List<Product> productList = new ArrayList<>();
        String sql = "SELECT * FROM product";
        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setId_dm(rs.getString("id_dm"));
                p.setTitle(rs.getString("title"));
                p.setPrice(rs.getString("price"));
                p.setImg(rs.getString("img"));
                p.setList_img(rs.getString("list_img"));
                p.setStatus(rs.getString("status"));
                productList.add(p);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }

    public Product getProductById(int id) {
        String sql = "SELECT * FROM product WHERE id = ?";
        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setId_dm(rs.getString("id_dm"));
                p.setTitle(rs.getString("title"));
                p.setPrice(rs.getString("price"));
                p.setImg(rs.getString("img"));
                p.setList_img(rs.getString("list_img"));
                p.setStatus(rs.getString("status"));
                return p;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean saveOrder(His_products order) {
        String sql = "INSERT INTO his_products (username, id_sp, phone, address, time, status) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, order.getUsername());
            ps.setInt(2, order.getId_sp());
            ps.setString(3, order.getPhone());
            ps.setString(4, order.getAddress());
            ps.setString(5, order.getTime());
            ps.setString(6, order.getStatus());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean addProduct(Product product) {
        String sql = "INSERT INTO product (id_dm, title, price, img, status) VALUES (?, ?, ?, ?,?)";
        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, product.getId_dm());
            stmt.setString(2, product.getTitle());
            stmt.setString(3, product.getPrice());
            stmt.setString(4, product.getImg());
            stmt.setString(5, product.getStatus());

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateProduct(Product product) {
        String sql = "UPDATE product SET id_dm=?, title=?, price=?, img=?, status=? WHERE id=?";
        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, product.getId_dm());
            stmt.setString(2, product.getTitle());
            stmt.setString(3, product.getPrice());
            stmt.setString(4, product.getImg());
            stmt.setString(5, product.getStatus());
            stmt.setInt(6, product.getId());

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteProduct(int id) {
        String sql = "DELETE FROM product WHERE id = ?";
        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Product> searchProducts(String name, String category, String sortType, String sortBy, int limit) {
        List<Product> productList = new ArrayList<>();
        StringBuilder sql = new StringBuilder("SELECT * FROM product WHERE 1=1");

        if (name != null && !name.trim().isEmpty()) {
            sql.append(" AND title LIKE ?");
        }
        if (category != null && !category.trim().isEmpty()) {
            sql.append(" AND id_dm = ?");
        }

        if (sortType != null && !sortType.isEmpty()) {
            switch (sortType) {
                case "is_new":
                    sql.append(" ORDER BY created_at DESC");
                    break;
                case "sales_count":
                    sql.append(" ORDER BY sales_count DESC");
                    break;
                case "is_cheap":
                    sql.append(" ORDER BY price ASC");
                    break;
                case "is_free":
                    sql.append(" AND price = 0");
                    break;
            }
        }

        // Sắp xếp thêm theo tên
        if (sortBy != null && !sortBy.isEmpty()) {
            switch (sortBy) {
                case "a_to_z":
                    sql.append(" ORDER BY title ASC");
                    break;
                case "z_to_a":
                    sql.append(" ORDER BY title DESC");
                    break;
            }
        }

        // Giới hạn số lượng
        sql.append(" LIMIT ?");

        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql.toString())) {

            int index = 1;
            if (name != null && !name.trim().isEmpty()) {
                stmt.setString(index++, "%" + name + "%");
            }
            if (category != null && !category.trim().isEmpty()) {
                stmt.setString(index++, category);
            }

            stmt.setInt(index, limit);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setId_dm(rs.getString("id_dm"));
                p.setTitle(rs.getString("title"));
                p.setPrice(rs.getString("price"));
                p.setImg(rs.getString("img"));
                p.setList_img(rs.getString("list_img"));
                p.setStatus(rs.getString("status"));
                productList.add(p);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productList;
    }

    public List<Product> getNewestProductsInMinutes(int minutes) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM product WHERE time >= NOW() - INTERVAL ? MINUTE ORDER BY time DESC";

        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, minutes); // set số phút ở đây, ví dụ 20 phút
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setTitle(rs.getString("title"));
                p.setPrice(rs.getString("price"));
                p.setImg(rs.getString("img"));
                p.setId_dm(rs.getString("id_dm"));
                p.setStatus(rs.getString("status"));
                p.setTime(rs.getString("time"));
                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

}
