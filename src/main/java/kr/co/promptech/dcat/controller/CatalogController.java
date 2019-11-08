package kr.co.promptech.dcat.controller;

import kr.co.promptech.dcat.model.Category;
import kr.co.promptech.dcat.repository.CategoryRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thymeleaf.spring5.SpringTemplateEngine;

import java.util.List;

@Controller
@RequestMapping("/catalogs")
public class CatalogController {
    private static final Logger logger = LoggerFactory.getLogger(CatalogController.class);

    @Autowired
    SpringTemplateEngine springTemplateEngine;

    @Autowired
    private CategoryRepository categoryRepository;

    @GetMapping(value ="", produces = { MediaType.TEXT_HTML_VALUE })
    public String index(Model model) {
        List<Category> categories = categoryRepository.findAll();
        model.addAttribute("categories", categories);

        return "catalogs/index";
    }

    @GetMapping(value ="", produces = { MediaType.APPLICATION_XML_VALUE })
    public String indexXml(Model model){
        logger.debug("call indexXml");
        List<Category> categories = categoryRepository.findAll();
        model.addAttribute("categories", categories);

        return "catalogs/index.xml";
    }
}
