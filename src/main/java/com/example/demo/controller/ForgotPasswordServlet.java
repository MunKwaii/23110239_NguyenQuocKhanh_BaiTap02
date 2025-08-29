package com.example.demo.controller;

import com.example.demo.dao.UserDao;
import com.example.demo.dao.implement.UserDaoImpl;
import com.example.demo.models.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/forgot-password")
public class ForgotPasswordServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/views/forgot-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String newPass = request.getParameter("password");

        UserDao userDao = new UserDaoImpl();
        User user = userDao.findByEmail(email);

        if (user != null) {
            userDao.updatePassword(user.getId(), newPass);
            request.setAttribute("message", "Mật khẩu đã được đổi thành công!");
        } else {
            request.setAttribute("message", "mail không tồn tại trong hệ thống!");
        }
        request.getRequestDispatcher("/views/forgot-password.jsp").forward(request, response);
    }
}
