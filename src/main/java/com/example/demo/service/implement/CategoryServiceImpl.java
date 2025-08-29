package com.example.demo.service.implement;

import java.io.File;
import java.util.List;

import com.example.demo.dao.CategoryDao;
import com.example.demo.dao.implement.CategoryDaoImpl;
import com.example.demo.models.Category;
import com.example.demo.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {

    CategoryDao categoryDao = new CategoryDaoImpl();

    @Override
    public void insert(Category category) {
        categoryDao.insert(category);
    }

    @Override
    public void edit(Category newCategory) {
        Category oldCategory = categoryDao.get(newCategory.getCateid());
        oldCategory.setCatename(newCategory.getCatename());

        if (newCategory.getIcon() != null) {
            // Xóa file ảnh cũ (nếu có)
            String fileName = oldCategory.getIcon();
            final String dir = "E:\\upload"; // đường dẫn thư mục ảnh (tùy chỉnh)
            File file = new File(dir + "/category/" + fileName);
            if (file.exists()) {
                file.delete();
            }
            oldCategory.setIcon(newCategory.getIcon());
        }
        categoryDao.edit(oldCategory);
    }

    @Override
    public void delete(int id) {
        categoryDao.delete(id);
    }

    @Override
    public Category get(int id) {
        return categoryDao.get(id);
    }

    @Override
    public Category get(String name) {
        return categoryDao.get(name);
    }

    @Override
    public List<Category> getAll() {
        return categoryDao.getAll();
    }

    @Override
    public List<Category> search(String keyword) {
        return categoryDao.search(keyword);
    }
}
