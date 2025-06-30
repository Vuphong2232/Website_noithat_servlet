package com.example.servelet_chuan.entities;

public class Category {
    private int id;
    private String title;
    private String status;

    public Category(int id, String title, String status) {
        this.id = id;
        this.title = title;
        this.status = status;
    }

    public Category(String title, String status) {
        this.title = title;
        this.status = status;
    }


    public Category(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "categori{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
