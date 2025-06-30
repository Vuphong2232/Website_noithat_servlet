package com.example.servelet_chuan.entities;

public class Users {
    private int id;
    private String username;
    private String email;
    private String password;
    private String level = "0"; // mặc định level là "0"

    public Users(String username, String email, String password, String level) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.level = (level == null || level.isEmpty()) ? "0" : level;
    }
    public Users(String username, String email, String password) {
        this(username, email, password, "0");
    }

    public Users() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = (level == null || level.isEmpty()) ? "0" : level;
    }

    @Override
    public String toString() {
        return "Users{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", level='" + level + '\'' +
                '}';
    }
}
