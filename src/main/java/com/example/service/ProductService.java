package com.example.service;

import com.example.entity.Cart;
import com.example.entity.Product;

import java.util.List;

public interface ProductService {
    Product gainProduct(int id);

    List<Cart> gainCartProduct(int id);

    int deleteCartProduct(int id);

    int updateCartProduct(int num, int id);

    List<Product> all();

}
