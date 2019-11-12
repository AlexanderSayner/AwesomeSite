package awesome.site.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class MusicController {

    @GetMapping(value = "/music")
    public String getSong(Map<String, Object> model) {
        return "music";
    }
}
