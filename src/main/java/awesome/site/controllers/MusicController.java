package awesome.site.controllers;

import awesome.site.entities.Song;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class MusicController {

    @GetMapping(value = "/song")
    public String getSong(Map<String, Object> model) {

        Song song = new Song("Evanescence", "Fallen", "Going Under");
        model.put("message", song.toString());
        return "any";
    }
}
