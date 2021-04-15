package com.example.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.example.dao.impl.ProductsDaoImpl;
import com.example.entity.Cart;
import com.example.entity.Product;
import com.example.service.impl.ProductsServiceImpl;
import com.example.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/GainCartProduct")
public class GainCartProductServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置请求编码
        request.setCharacterEncoding("UTF-8");
        String flag = request.getQueryString();
        System.out.println("flag" + flag);
        if (flag.equals("gain")) {
            int id = Integer.parseInt(request.getParameter("id"));
            if (id != 0) {
                List<Cart> userCart = new ProductsServiceImpl().gainCartProduct(id);
                JSONArray jsonArray = new JSONArray();
                for (int i = 0; i < userCart.size(); i++) {
                    Cart cart = userCart.get(i);
                    JSONObject jsonObject = new JSONObject();
                    jsonObject.put("id", cart.getId());
                    jsonObject.put("pname", cart.getPname());
                    jsonObject.put("price", cart.getPrice());
                    jsonObject.put("sum", cart.getSum());
                    jsonArray.add(jsonObject);
                }
                String result = jsonArray.toJSONString();
                response.setCharacterEncoding("UTF-8");
                PrintWriter printWriter = response.getWriter();
                printWriter.write(result);
                printWriter.flush();
                printWriter.close();
            }
        } else if (flag.equals("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println("delete-getParameter" + id);
            if (id != 0) {
                int result = new ProductsServiceImpl().deleteCartProduct(id);
//                response.sendRedirect("cart.jsp");
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("result", result);
                String result1 = jsonObject.toJSONString();
                response.setCharacterEncoding("UTF-8");
                PrintWriter printWriter = response.getWriter();
                printWriter.write(result1);
                printWriter.flush();
                printWriter.close();
            }
        } else if (flag.equals("update")) {
            int id = Integer.parseInt(request.getParameter("id"));
            int num = Integer.parseInt(request.getParameter("num"));
            if (id != 0 && num != 0) {
                int n = new ProductsServiceImpl().updateCartProduct(num, id);
            }
        } else if (flag.equals("cart")) {
            HttpSession session = request.getSession();
            int userid = (int) session.getAttribute("userid");
            System.out.println(userid);
            String id = request.getParameter("id");
            int id1 = Integer.parseInt(id);
            try {
                new ProductsDaoImpl().gouwuName(id1, userid);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        } else if (flag.equals("Search")) {
            HttpSession session = request.getSession();
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html;charset=utf-8");
            //resp.setContentType("html/text;charset=utf-8");
            //获取请求对象
            String search = (String) session.getAttribute("text");
            System.out.println(search);
            try {
                //git maven
                List<Product> list = new ProductsDaoImpl().getSearch(search);
                //session.setAttribute("info",list);
                System.out.println(list);
                JSONArray jsonArray = new JSONArray();
                for (int i = 0; i < list.size(); i++) {
                    Product product = list.get(i);
                    JSONObject jsonObject = new JSONObject();
                    jsonObject.put("id", product.getId());
                    jsonObject.put("pname", product.getPname());
                    jsonObject.put("price", product.getPrice());
                    jsonObject.put("pimg", product.getPimg());
                    jsonObject.put("view", product.getView());
                    jsonObject.put("sales", product.getSales());
                    jsonObject.put("color", product.getColor());
                    jsonObject.put("capacity", product.getCapacity());
                    jsonArray.add(jsonObject);
                }
                String result = jsonArray.toJSONString();
                System.out.println(result);
                PrintWriter writer = response.getWriter();
                writer.write(result);
                writer.flush();
                writer.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        } else if (flag.equals("gouwuche")) {
            //获取ArrayList<Product>
            ProductsServiceImpl productService = new ProductsServiceImpl();
            List<Product> all = productService.all();
            //存储到session,details.jsp页面可以获取session中存储的集合
            HttpSession session = request.getSession();
            session.setAttribute("allpros", all);
            System.out.println(all);
            //集合对象转成JSON数组对象
            JSONArray jsonArray = new JSONArray();
            //遍历集合 for,迭代器，增强for
            for (int i = 0; i < all.size(); i++) {
                Product product = all.get(i);
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("id", product.getId());
                jsonObject.put("pname", product.getPname());
                jsonObject.put("price", product.getPrice());
                jsonObject.put("pimg", product.getPimg());
                jsonObject.put("view", product.getView());
                jsonObject.put("sales", product.getSales());
                jsonObject.put("color", product.getColor());
                jsonObject.put("capacity", product.getCapacity());
                jsonArray.add(jsonObject);
            }
            String result = jsonArray.toJSONString();//满足JSON格式的字符串
            //设置响应编码
            response.setCharacterEncoding("UTF-8");
            //respone输出流
            PrintWriter writer = response.getWriter();
            writer.print(result);
            writer.flush();
            writer.close();
        }
    }
}
