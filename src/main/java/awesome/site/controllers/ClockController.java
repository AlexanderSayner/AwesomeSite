package awesome.site.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class ClockController {

    @GetMapping(value = "/clock")
    public String getClock(Map<String, Object> model) {
        return "clock";
    }
}
