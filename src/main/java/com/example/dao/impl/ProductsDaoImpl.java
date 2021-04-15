package com.example.dao.impl;

import com.example.dao.ProductsDao;
import com.example.entity.Cart;
import com.example.entity.Product;
import com.example.util.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductsDaoImpl implements ProductsDao {

    @Override
    public Product gainProduct(int id) {
        Product product = new Product();
        try (Connection conn = JDBCUtils.getConnecton()) {
            try (PreparedStatement ps = conn.prepareStatement("select * from product where id =? ")) {
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery(); // 1
                while (rs.next()) {
                    product.setId(rs.getInt("id"));
                    product.setPname(rs.getString("pname"));
                    product.setPrice(rs.getDouble("price"));
                    product.setPimg(rs.getString("pimg"));
                    product.setColor(rs.getString("color"));
                    product.setCapacity(rs.getString("capacity"));
                }
                System.out.println("delete" + rs);
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return product;
    }

    @Override
    public List<Cart> gainCartProduct(int id) {
        List<Cart> userCart = new ArrayList<>();
        try (Connection conn = JDBCUtils.getConnecton()) {
            try (PreparedStatement ps = conn.prepareStatement("select * from cart where userid = ?")) {
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery(); // 1
                while (rs.next()) {
                    Cart cart = new Cart();
                    cart.setId(rs.getInt("id"));
                    cart.setPname(rs.getString("pname"));
                    cart.setPrice(rs.getInt("price"));
                    cart.setSum(rs.getInt("quantity"));
                    userCart.add(cart);
                }
                System.out.println("gain" + userCart);

            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return userCart;
    }

    @Override
    public int deleteCartProduct(int id) {
        int result = 0;
        try (Connection conn = JDBCUtils.getConnecton()) {
            try (PreparedStatement ps = conn.prepareStatement("delete from cart where id = ?")) {
                ps.setInt(1, id);
                result = ps.executeUpdate();
                System.out.println("delete" + result);
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return result;
    }

    @Override
    public int updateCartProduct(int num, int id) {
        int result = 0;
        try (Connection conn = JDBCUtils.getConnecton()) {
            try (PreparedStatement ps = conn.prepareStatement("update  cart set quantity = ? where id = ?")) {
                ps.setInt(1, num);
                ps.setInt(2, id);
                result = ps.executeUpdate();
                System.out.println("update" + result);
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        try {
            Connection conn = JDBCUtils.getConnecton();
            String sql = "select  *  from  product ";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            //结果集
            ResultSet rs = preparedStatement.executeQuery();
            //while循环  游标  默认指向第一条数据
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setPname(rs.getString("pname"));
                product.setPrice(rs.getDouble("price"));
                product.setPimg(rs.getString("pimg"));
                product.setView(rs.getInt("view"));
                product.setSales(rs.getInt("sales"));
                product.setCapacity(rs.getString("capacity"));
                products.add(product);
//                Evaluate evaluate = new Evaluate();
//                evaluate.setInfo(rs.getString("info"));
//                evaluate.setUsername(rs.getString("username"));
//                evaluate.setTime(rs.getDate("time"));
//                product.setEvaluates(evaluate);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public void gouwuName(int id, int userid) throws SQLException {
        Connection connecton = JDBCUtils.getConnecton();

        String sql = "select * from cart where userid=? and productid=?";

        PreparedStatement preparedStatement = connecton.prepareStatement(sql);

        preparedStatement.setInt(1, userid);
        preparedStatement.setInt(2, id);

        ResultSet resultSet = preparedStatement.executeQuery();
//            通过id获取该商品的所有信息
        Product product = new ProductsDaoImpl().gainProduct(id);
//        int userid1 = userid;
        if (resultSet.next() == false) {
            //            在购物车中添加信息
            String insert = "insert into cart(userid,productid,pname,price,quantity) values(?,?,?,?,?)";
            PreparedStatement preparedStatement1 = connecton.prepareStatement(insert);

            preparedStatement1.setInt(1, userid);
            preparedStatement1.setInt(2, product.getId());
            preparedStatement1.setString(3, product.getPname());
            preparedStatement1.setDouble(4, product.getPrice());
            preparedStatement1.setInt(5, 1);

            preparedStatement1.executeUpdate();
        } else {
//            数量加1

            String update = "update cart set quantity =quantity+1 where userid=? and productid=?";
            PreparedStatement preparedStatement1 = connecton.prepareStatement(update);
            preparedStatement1.setInt(1, userid);
            preparedStatement1.setInt(2, id);
            preparedStatement1.executeUpdate();
        }

    }

    @Override
    public List<Product> getSearch(String pname) throws SQLException {
        List<Product> list = new ArrayList<>();
        Connection connection = JDBCUtils.getConnecton();
        String sql = "select * from product where pname like  '%" + pname + "%' ";
        //String sql = "select * from product where pname like  '%三%' ";
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()) {
            Product product = new Product();
            product.setId(resultSet.getInt("id"));
            product.setPname(resultSet.getString("pname"));
            product.setPrice(resultSet.getDouble("price"));
            product.setPimg(resultSet.getString("pimg"));
            product.setView(resultSet.getInt("view"));
            product.setSales(resultSet.getInt("sales"));
            product.setCapacity(resultSet.getString("capacity"));

            list.add(product);
            //System.out.println(product);
        }
        return list;
    }


}
