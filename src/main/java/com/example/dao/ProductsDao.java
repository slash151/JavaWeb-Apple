package com.example.dao;

import com.example.entity.Cart;
import com.example.entity.Product;

import java.sql.SQLException;
import java.util.List;

public interface ProductsDao {

    //查询商品
    Product gainProduct(int id);

    //获取购物车商品
    List<Cart> gainCartProduct(int id);

    //删除购物车商品
    int deleteCartProduct(int id);

    //更新购物车商品数量
    int updateCartProduct(int num, int id);

    //更新购物车商品数量
    public List<Product> getAllProducts();

    //往购物车添加商品
    void gouwuName(int id,int userid) throws SQLException;

    //搜索
    List<Product> getSearch(String pname) throws SQLException;
}
