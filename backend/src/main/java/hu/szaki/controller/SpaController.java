package hu.szaki.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SpaController {

    @GetMapping(value = {"/", "/{path:^(?!api|api-docs|swagger-ui).*$}/**"})
    public String forward() {
        return "forward:/index.html";
    }
}
