package com.example.entity;

public class Cart {
    private int id;
    private String pname;
    private int price;
    private int sum;

    public Cart(int id, String pname, int price, int sum) {
        this.id = id;
        this.pname = pname;
        this.price = price;
        this.sum = sum;
    }

    public Cart(String pname, int price, int sum) {
        this.pname = pname;
        this.price = price;
        this.sum = sum;
    }

    public Cart() {

    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", pname='" + pname + '\'' +
                ", price=" + price +
                ", sum=" + sum +
                '}';
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }
}
