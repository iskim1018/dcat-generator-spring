package kr.co.promptech.dcat.controller;

import kr.co.promptech.dcat.model.Catalog;
import kr.co.promptech.dcat.repository.CatalogRepository;
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
    private CatalogRepository catalogRepository;

    @GetMapping(value ="", produces = { MediaType.TEXT_HTML_VALUE })
    public String index(Model model) {
        List<Catalog> catalogs = catalogRepository.findAll();
        model.addAttribute("catalogs", catalogs);

        return "catalogs/index";
    }

    @GetMapping(value ="", produces = { MediaType.APPLICATION_XML_VALUE })
    public String indexXml(Model model){
        logger.debug("call indexXml");
        List<Catalog> catalogs = catalogRepository.findAll();
        model.addAttribute("catalogs", catalogs);

        return "catalogs/index.xml";
    }
}
