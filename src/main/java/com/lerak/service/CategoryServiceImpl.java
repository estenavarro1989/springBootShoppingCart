package com.lerak.service;

import com.lerak.dao.CategoryDao;
import com.lerak.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryDao categoryDao;

    public Category addNewCategory(String categoryName, String categoryDescription){
        Category category = new Category(categoryName, categoryDescription);
        categoryDao.save(category);
        return category;
    }
}
