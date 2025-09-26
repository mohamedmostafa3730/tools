package com.portfolio.tools.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TextToolsController {

    @RequestMapping("/texttools")
    public String textToolsPage(){
        return "texttools";
    }
}
