package awesome.site.controllers.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@RestController
public class RandomizerController {

    private final List<String> emoji = Arrays.asList(
            "(◕‿◕)",
            "(─‿‿─)",
            "(* ^ ω ^)",
            "(´ ∀ *)",
            "(o^▽^o)",
            "(⌒▽⌒)☆ ",
            "ヽ(・∀・)ﾉ ",
            "(´｡• ω •｡) ",
            "(o･ω･o)",
            "(＠＾◡＾) ",
            "(^人^)",
            "(o´▽o)",
            "( ´ ω )",
            "(((o(*°▽°*)o)))",
            "(´• ω •)",
            "(＾▽＾)",
            "╰(▔∀▔)╯",
            "(─‿‿─)",
            "(✯◡✯)",
            "(◕‿◕)",
            "(⌒‿⌒)",
            "＼(≧▽≦)／",
            "(*°▽°*)",
            "٩(｡•́‿•̀｡)۶",
            "(´｡• ᵕ •｡)",
            "( ´ ▽ )",
            "ヽ(>∀<☆)ノ",
            "o(≧▽≦)o",
            "＼(￣▽￣)／",
            "(*¯︶¯*) ",
            "(o˘◡˘o)",
            "\\(★ω★)/",
            "(╯✧▽✧)╯",
            "o(>ω<)o",
            "( ‾́ ◡ ‾́ )",
            "(ﾉ´ヮ)ﾉ*: ･ﾟ",
            "(๑˘︶˘๑)",
            "(´･ᴗ･ )",
            "(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧",
            "(─‿‿─)♡",
            "(´｡• ᵕ •｡)",
            "♡",
            "(´ ω ♡)",
            "♡",
            "( ◡‿◡ )",
            "(ღ˘⌣˘ღ)",
            "(♡°▽°♡)",
            "(´• ω •)",
            "♡",
            "(´ ε )",
            "♡",
            "╰(*´︶*)╯",
            "♡",
            "(*˘︶˘*).｡.:*♡",
            "(≧◡≦)",
            "♡",
            "♡(⌒▽⌒)♡,",
            "(˘▽˘>ԅ( ˘⌣˘)",
            "( ˘⌣˘)♡(˘⌣˘ )",
            "σ(≧ε≦σ)",
            "♡",
            "♡",
            "(⇀ 3 ↼)",
            "(˘∀˘)/(μ‿μ)",
            "❤",
            "❤",
            "(ɔˆз(ˆ⌣ˆc)"
    );

    @GetMapping(value = "/list")
    public String getRandomList(@RequestParam Integer from, @RequestParam Integer to) {
        if (to < from) return "oh, that is not nice. To must be more than from :(";
        if (to.equals(from)) return "oh, those numbers are equals";

        // Заполняю
        final List<Integer> list = new ArrayList<>();
        for (int i = from; i <= to; i++) {
            list.add(i);
        }

        final int total = list.size();
        // Готовлю список с результатами
        final List<String> result = new ArrayList<>(total);
        result.add("(⌒‿⌒)");
        for (int i = 0; i < total; i++) {
            final int randomIndex = rnd(0, list.size() - 1);
            final Integer randomElement = list.get(randomIndex);
            result.add(
                    '\n' +
                            String.valueOf(randomElement) +
                            "   " +
                            emoji.get(rnd(0, emoji.size() - 1))
            );
            list.remove(randomIndex);
        }

        result.add("\n");
        return String.valueOf(result);
    }

    private int rnd(int min, int max) {
        max -= min;
        return (int) (Math.random() * ++max) + min;
    }
}
