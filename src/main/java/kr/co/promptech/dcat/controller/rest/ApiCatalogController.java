package kr.co.promptech.dcat.controller.rest;

import kr.co.promptech.dcat.model.Category;
import kr.co.promptech.dcat.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/catalogs")
public class ApiCatalogController {
    @Autowired
    private CategoryRepository categoryRepository;

    @GetMapping("")
    public List<Category> index() {
        return categoryRepository.findAll();
    }
}
