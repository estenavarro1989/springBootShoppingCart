package com.lerak.service;

import com.lerak.entity.Category;

public interface CategoryService {
    Category addNewCategory(String categoryName, String categoryDescription);
}
