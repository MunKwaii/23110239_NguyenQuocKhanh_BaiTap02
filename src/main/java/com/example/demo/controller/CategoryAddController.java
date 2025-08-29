package com.example.demo.controller;

import java.nio.charset.StandardCharsets;
import java.io.File;
import java.io.IOException;
import java.util.List;

import com.example.demo.models.Category;
import com.example.demo.service.CategoryService;
import com.example.demo.service.implement.CategoryServiceImpl;
import com.example.demo.util.Constant;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload2.core.DiskFileItemFactory;
import org.apache.commons.fileupload2.core.FileItem;
import org.apache.commons.fileupload2.jakarta.servlet6.JakartaServletFileUpload;

@WebServlet(urlPatterns = {"/home/category/add"})
public class CategoryAddController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final CategoryService cateService = new CategoryServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Forward tới đúng file trong thư mục /views/
        req.getRequestDispatcher("/views/add-category.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Category category = new Category();

        // Tạo factory & upload cho Jakarta Servlet
        DiskFileItemFactory factory = DiskFileItemFactory.builder().get();
        JakartaServletFileUpload upload = new JakartaServletFileUpload(factory);

        try {
            resp.setContentType("text/html;charset=UTF-8");
            req.setCharacterEncoding("UTF-8");

            // Lấy field trong form
            List<FileItem> items = upload.parseRequest(req);

            for (FileItem item : items) {
                if (item.isFormField()) {
                    // Xử lý field text
                    if ("name".equals(item.getFieldName())) {
                        category.setCatename(item.getString(StandardCharsets.UTF_8));
                    }
                } else {
                    // Xử lý file upload
                    if ("icon".equals(item.getFieldName()) && item.getSize() > 0) {
                        String originalFileName = item.getName();
                        int index = originalFileName.lastIndexOf(".");
                        String ext = (index > 0) ? originalFileName.substring(index + 1) : "";
                        String fileName = System.currentTimeMillis() + "." + ext;

                        File file = new File(Constant.DIR + "/category/" + fileName);
                        if (!file.getParentFile().exists()) {
                            file.getParentFile().mkdirs();
                        }

                        // FileUpload2 cần Path
                        item.write(file.toPath());

                        category.setIcon("category/" + fileName);
                    }
                }
            }

            // Lưu vào DB
            cateService.insert(category);

            // Redirect về danh sách trong mapping /home/category/list
            resp.sendRedirect(req.getContextPath() + "/home/category/list");

        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().write("Lỗi khi upload file hoặc thêm Category: " + e.getMessage());
        }
    }
}
