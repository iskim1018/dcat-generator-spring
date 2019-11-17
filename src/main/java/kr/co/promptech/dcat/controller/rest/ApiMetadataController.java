package kr.co.promptech.dcat.controller.rest;

import kr.co.promptech.dcat.model.Category;
import kr.co.promptech.dcat.repository.CategoryRepository;
import kr.co.promptech.dcat.repository.PlatformRepository;
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

    public static final String TOKEN_PREFIX = "Bearer ";
    public static final String HEADER_STRING = "Authorization";

    @Autowired
    private PlatformRepository platformRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @GetMapping(value ="", produces = { MediaType.APPLICATION_XML_VALUE })
    public String index(HttpServletRequest request, Model model) {
        String token = request.getHeader(HEADER_STRING);

        if (token != null && token.startsWith(TOKEN_PREFIX)) {
            token = token.replace(TOKEN_PREFIX, "");

            if (platformRepository.findByApiKey(token) != null) {
                List<Category> categories = categoryRepository.findAll();
                model.addAttribute("categories", categories);

                return "sample/index.xml";
            }
        }

        return "errors/401.xml";
    }
}
