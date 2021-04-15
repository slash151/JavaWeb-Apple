package com.example.service.impl;

import com.example.dao.impl.ProductsDaoImpl;
import com.example.entity.Cart;
import com.example.entity.Product;
import com.example.service.ProductService;

import java.util.List;

public class ProductsServiceImpl implements ProductService {
    ProductsDaoImpl psi = new ProductsDaoImpl();

    @Override
    public Product gainProduct(int id) {
        return psi.gainProduct(id);
    }

    @Override
    public List<Cart> gainCartProduct(int id) {
        return psi.gainCartProduct(id);
    }

    @Override
    public int deleteCartProduct(int id) {
        return psi.deleteCartProduct(id);
    }

    @Override
    public int updateCartProduct(int num, int id) {
        return psi.updateCartProduct(num, id);
    }

    @Override
    public List<Product> all() {
        return psi.getAllProducts();
    }

}
