package com.example.servelet_chuan.entities;

public class His_products {
    private int id;
    private String username;
    private int id_sp;
    private String phone;
    private String address;
    private String time;
    private String status;
    private Product product;


    public His_products() {

    }

    public His_products(int id, String username, int id_sp, String phone, String address, String time, String status) {
        this.id = id;
        this.username = username;
        this.id_sp = id_sp;
        this.phone = phone;
        this.address = address;
        this.time = time;
        this.status = status;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
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

    public int getId_sp() {
        return id_sp;
    }

    public void setId_sp(int id_sp) {
        this.id_sp = id_sp;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "His_products{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", id_sp=" + id_sp +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", time='" + time + '\'' +
                ", status='" + status + '\'' +
                '}';
    }


}

