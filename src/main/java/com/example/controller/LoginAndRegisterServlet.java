package com.example.controller;

import com.example.entity.User;
import com.example.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginAndRegisterServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        //设置请求编码
        request.setCharacterEncoding("UTF-8");
        String flag = request.getQueryString();
        if (flag.equals("login")) {
            //获取请求参数
            String name = request.getParameter("username");
            String pwd = request.getParameter("password");
            int userid = new UserServiceImpl().validateUsersByUsernameAndPassword(name, pwd);
            if (userid != 0) {
                session.setAttribute("userid", userid);
                request.getRequestDispatcher("home.jsp").forward(request, response);
            } else {
                session.setAttribute("msg", " 用户名或密码错误");
                response.sendRedirect("login.jsp");

            }
        } else if (flag.equals("register")) {
            String name = request.getParameter("username");
            String pwd = request.getParameter("password");
            String tel = request.getParameter("tel");
            String address = request.getParameter("address");
            double balance = Double.parseDouble(request.getParameter("balance"));
            User user = new User(name, pwd, tel, address, balance);
            int b = new UserServiceImpl().insertUser(user);
            if (b != 0) {
                response.sendRedirect("login.jsp");
            } else {
                session.setAttribute("msg", "注册失败");
                response.sendRedirect("register.jsp");
            }
        }
    }
}
