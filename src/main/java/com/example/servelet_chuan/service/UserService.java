package com.example.servelet_chuan.service;

import com.example.servelet_chuan.config.DBConnect;
import com.example.servelet_chuan.entities.Users;

import java.sql.*;

public class UserService {

    private static final String INSERT_USER_SQL = "INSERT INTO users (username, email, password, level) VALUES (?, ?, ?, ?)";
    public void addUser(Users user) {
        if (user.getLevel() == null || user.getLevel().isEmpty()) {
            user.setLevel("0");
        }
        try (Connection connection = new DBConnect().openConnect();
             PreparedStatement statement = connection.prepareStatement(INSERT_USER_SQL, Statement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, user.getUsername());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getPassword());
            statement.setString(4, user.getLevel());
            int affectedRows = statement.executeUpdate();
            if (affectedRows > 0) {
                try (ResultSet rs = statement.getGeneratedKeys()) {
                    if (rs.next()) {
                        user.setId(rs.getInt(1));
                    }
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public boolean check_user(String email, String username) {
        String sql = "SELECT 1 FROM users WHERE email = ? OR username = ?";
        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, email);
            stmt.setString(2, username);
            ResultSet rs = stmt.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    public Users getUserByUsername(String username) {
        String sql = "SELECT * FROM users WHERE username = ?";
        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Users user = new Users();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setLevel(rs.getString("level"));
                return user;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean updatePassword(int userId, String newPassword) {
        String sql = "UPDATE users SET password = ? WHERE id = ?";
        try (Connection conn = new DBConnect().openConnect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, newPassword);
            stmt.setInt(2, userId);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

}
