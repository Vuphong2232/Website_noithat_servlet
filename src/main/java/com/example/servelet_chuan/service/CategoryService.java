package com.example.servelet_chuan.service;

import com.example.servelet_chuan.config.DBConnect;
import com.example.servelet_chuan.entities.Category;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryService {

    public List<Category> getAll() {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * FROM category ORDER BY id DESC";

        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Category c = new Category();
                c.setId(rs.getInt("id"));
                c.setTitle(rs.getString("title"));
                c.setStatus(rs.getString("status"));
                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Category findById(int id) {
        String sql = "SELECT * FROM category WHERE id = ?";
        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new Category(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("status")
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean insert(Category c) {
        String sql = "INSERT INTO category (title, status) VALUES (?, ?)";

        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, c.getTitle());
            stmt.setString(2, c.getStatus());
            return stmt.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean update(Category c, int id) {
        String sql = "UPDATE category SET title = ?, status = ? WHERE id = ?";

        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, c.getTitle());
            stmt.setString(2, c.getStatus());
            stmt.setInt(3, id);

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(int id) {
        String sql = "DELETE FROM category WHERE id = ?";

        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            int rows = stmt.executeUpdate();
            System.out.println(">> Đã xóa " + rows + " dòng trong category");
            return rows > 0;

        } catch (SQLException e) {
            System.err.println(">> Lỗi SQL khi xoá category: " + e.getMessage());
            return false;
        }
    }

}
