package com.example.entity;

public class Product {
    private int id;
    private String pname;
    private Double price;
    private String pimg;
    private String color;
    private String capacity;
    private int sales;
    private int view;

    public Product() {

    }

    public Product(int id, String pname, Double price, String pimg, String color, String capacity, int sales, int view) {
        this.id = id;
        this.pname = pname;
        this.price = price;
        this.pimg = pimg;
        this.color = color;
        this.capacity = capacity;
        this.sales = sales;
        this.view = view;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getPimg() {
        return pimg;
    }

    public void setPimg(String pimg) {
        this.pimg = pimg;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public int getSales() {
        return sales;
    }

    public void setSales(int sales) {
        this.sales = sales;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", pname='" + pname + '\'' +
                ", price=" + price +
                ", pimg='" + pimg + '\'' +
                ", color='" + color + '\'' +
                ", capacity='" + capacity + '\'' +
                ", sales=" + sales +
                ", view=" + view +
                '}';
    }
}
