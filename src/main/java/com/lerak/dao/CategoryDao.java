package com.lerak.dao;

import com.lerak.entity.Category;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CategoryDao extends CrudRepository<Category, Long> {
    List<Category> findByName(String name);
}
