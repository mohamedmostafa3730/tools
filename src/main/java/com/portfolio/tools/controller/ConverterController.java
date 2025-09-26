package com.portfolio.tools.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConverterController {
    @RequestMapping("/converter")
    public String converterPage() {
        return "converter";
    }
}
