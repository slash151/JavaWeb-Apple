package com.example.dao.impl;

import com.example.dao.UsersDao;
import com.example.entity.User;
import com.example.util.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UsersDao {

    @Override
    public int getUsersByUsernameAndPassword(String username, String password) {
        //获取数据库连接对象
        //查询sql语句
        //ResultSet结果集
        //构造List<Users>
        //List<User> userList = new ArrayList<>();
        User user = new User();
        try (Connection conn = JDBCUtils.getConnecton()) {
            try (PreparedStatement ps = conn.prepareStatement("select * from user where  username= ? and password=?")) {
                ps.setString(1, username); // 注意：索引从1开始
                ps.setString(2, password);
                ResultSet rs = ps.executeQuery(); // 1
                while (rs.next()) {
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setAddress(rs.getString("address"));
                    user.setPhone(rs.getString("phone"));
                    user.setBalance(rs.getDouble("balance"));
                    //userList.add(user);
                }
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return user.getId();
    }

    @Override
    public int insertUser(User user) {
        int n = 0;
        try (Connection conn = JDBCUtils.getConnecton()) {
            try (PreparedStatement ps = conn.prepareStatement("insert into user (username,password,phone,address,balance) values (?,?,?,?,?)")) {
                ps.setString(1, user.getUsername());
                ps.setString(2, user.getPassword());
                ps.setString(3, user.getPhone());
                ps.setString(4, user.getAddress());
                ps.setDouble(5, user.getBalance());
                n = ps.executeUpdate(); // 1
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return n;
    }


}
