package awesome.site.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class SvgController {

    @GetMapping(value = "/svg")
    public String getSvg(Map<String, Object> model) {
        return "svg";
    }
}
