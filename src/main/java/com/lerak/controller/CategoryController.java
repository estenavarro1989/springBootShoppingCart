package com.lerak.controller;

import com.lerak.entity.Category;
import com.lerak.service.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryServiceImpl categoryServiceImpl;

    @RequestMapping(value = "/addNewCategory", method = RequestMethod.POST)
    public @ResponseBody
    Category addNewCategory (@RequestParam String name
            , @RequestParam String description){
        return categoryServiceImpl.addNewCategory(name, description);
    }
}
