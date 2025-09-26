package com.portfolio.tools.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BMICalculatorController {
    @RequestMapping("/bmi")
    public String bmiPage(){
        return "bmi";
    }
}
