package kr.co.promptech.dcat.controller.rest;

import kr.co.promptech.dcat.model.Catalog;
import kr.co.promptech.dcat.repository.CatalogRepository;
import kr.co.promptech.dcat.service.TokenService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/api/metadata")
public class ApiMetadataController {
    private static final Logger logger = LoggerFactory.getLogger(ApiMetadataController.class);

    @Autowired
    private CatalogRepository catalogRepository;

    @Autowired
    private TokenService tokenService;

    @GetMapping(value ="", produces = { MediaType.APPLICATION_JSON_VALUE })
    public List<Catalog> index() {
        return catalogRepository.findAll();
    }

    @GetMapping(value ="", produces = { MediaType.APPLICATION_XML_VALUE })
    public String index(HttpServletRequest request, Model model) {
        String token = request.getHeader(TokenService.HEADER_STRING);

        if (tokenService.isValid(token)) {
            List<Catalog> catalogs = catalogRepository.findAll();
            model.addAttribute("catalogs", catalogs);

            return "dcat/index.xml";
        }
        return "errors/401.xml";
    }

    @GetMapping(value ="/datasets", produces = { MediaType.APPLICATION_XML_VALUE })
    public String datasets(HttpServletRequest request, Model model) {
        String token = request.getHeader(TokenService.HEADER_STRING);

        if (tokenService.isValid(token)) {
            List<Catalog> catalogs = catalogRepository.findAll();
            model.addAttribute("catalogs", catalogs);

            return "dcat/datasets.xml";
        }
        return "errors/401.xml";
    }
}
