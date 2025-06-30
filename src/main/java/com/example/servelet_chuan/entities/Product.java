package com.example.servelet_chuan.entities;

public class Product {
    private int id;
    private String id_dm;
    private String title;
    private String price;
    private String img;
    private String list_img;
    private String status;
    private String time ;


    public Product(int id, String id_dm, String title, String price, String img, String list_img, String status, String time) {
        this.id = id;
        this.id_dm = id_dm;
        this.title = title;
        this.price = price;
        this.img = img;
        this.list_img = list_img;
        this.status = status;
        this.time = time;
    }

    public Product() {
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getId_dm() {
        return id_dm;
    }

    public void setId_dm(String id_dm) {
        this.id_dm = id_dm;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getList_img() {
        return list_img;
    }

    public void setList_img(String list_img) {
        this.list_img = list_img;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", id_dm='" + id_dm + '\'' +
                ", title='" + title + '\'' +
                ", price='" + price + '\'' +
                ", img='" + img + '\'' +
                ", list_img='" + list_img + '\'' +
                ", status='" + status + '\'' +
                ", time='" + time + '\'' +
                '}';
    }
}
