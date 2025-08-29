package com.example.demo.controller;

import java.io.IOException;
import java.util.List;

import com.example.demo.models.Category;
import com.example.demo.service.CategoryService;
import com.example.demo.service.implement.CategoryServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/home/category/list"})
public class CategoryListController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final CategoryService cateService = new CategoryServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Category> cateList = cateService.getAll();
        req.setAttribute("cateList", cateList);
        req.getRequestDispatcher("/views/list-category.jsp").forward(req, resp);
    }
}

