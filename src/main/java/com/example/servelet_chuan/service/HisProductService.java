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
import java.util.Optional;

public class HisProductService {
    private final DBConnect dbConnect = new DBConnect();

    public List<His_products> getHistoryByUsername(String username) {
        List<His_products> list = new ArrayList<>();
        String sql = "SELECT h.*, p.title, p.price " +
                "FROM his_products h " +
                "JOIN product p ON h.id_sp = p.id " + // ✅ Sửa chỗ này
                "WHERE h.username = ? " +
                "ORDER BY h.time DESC";


        try (Connection conn = dbConnect.openConnect();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                // Khởi tạo đối tượng Product từ JOIN
                Product product = new Product();
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getString("price"));

                // Tạo đối tượng His_products và gán Product
                His_products his = new His_products(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getInt("id_sp"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getString("time"),
                        rs.getString("status")
                );
                his.setProduct(product);

                list.add(his);
            }

        } catch (Exception e) {
            System.out.println("Lỗi truy vấn lịch sử: " + e.getMessage());
        }

        return list;
    }




    public List<His_products> getAllHistory() {
        List<His_products> list = new ArrayList<>();
        String sql = "SELECT h.*, p.title, p.price " +
                "FROM his_products h " +
                "JOIN product p ON h.id_sp = p.id " + // ✅ Sửa lại JOIN
                "ORDER BY h.time DESC";

        try (Connection conn = dbConnect.openConnect();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Product product = new Product();
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getString("price"));

                His_products his = new His_products(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getInt("id_sp"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getString("time"),
                        rs.getString("status")
                );
                his.setProduct(product);
                list.add(his);
            }

        } catch (Exception e) {
            System.out.println("Lỗi truy vấn tất cả lịch sử đơn hàng: " + e.getMessage());
        }

        return list;
    }


    public Optional<His_products> findOrderById(int id) {
        String sql = "SELECT * FROM his_products WHERE id = ?";
        try (Connection conn = dbConnect.openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                His_products order = new His_products(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getInt("id_sp"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getString("time"),
                        rs.getString("status")
                );
                return Optional.of(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }

    public boolean updateOrderStatus(int id, String newStatus) {
        String sql = "UPDATE his_products SET status = ? WHERE id = ?";
        try (Connection conn = dbConnect.openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, newStatus);
            stmt.setInt(2, id);

            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

}
