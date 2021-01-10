package awesome.site.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class GLController {

    @GetMapping(value = "/gl")
    public String getGL(Map<String, Object> model) {
        return "opengl";
    }
}
