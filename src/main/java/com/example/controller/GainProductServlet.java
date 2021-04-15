package com.example.controller;

import com.alibaba.fastjson.JSONObject;
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

@WebServlet("/GainProduct")
public class GainProductServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        if (id != 0) {
            Product product = new ProductsServiceImpl().gainProduct(id);
            //System.out.println(product);
            //判断有没有返回产品值
            if (product == null) {
                response.sendRedirect("index.jsp");
            }
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("id", product.getId());
            jsonObject.put("pname", product.getPname());
            jsonObject.put("price", product.getPrice());
            jsonObject.put("pimg", product.getPimg());
            jsonObject.put("color", product.getColor());
            jsonObject.put("capacity", product.getCapacity());
            String result = jsonObject.toJSONString();
            response.setCharacterEncoding("UTF-8");
            PrintWriter printWriter = response.getWriter();
            printWriter.write(result);
        } else {
            System.out.println("error");
        }
    }
}
