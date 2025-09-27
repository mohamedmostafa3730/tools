package com.portfolio.tools.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.tools.model.calculatorModel;
import com.portfolio.tools.service.CalculatorService;

@Controller
public class CalculatorController {
    @RequestMapping("calculator")
    public String CalculatorPage() {
        return "calculator";
    }

    @PostMapping("Calculator")
    public ModelAndView getResult(calculatorModel model) {
        double result;
        result = switch (model.getOperator()) {
            case "+" -> CalculatorService.sum(model.getNum1(), model.getNum2());
            case "*" -> CalculatorService.multiply(model.getNum1(), model.getNum2());
            case "-" -> CalculatorService.subtract(model.getNum1(), model.getNum2());
            case "/" -> CalculatorService.divide(model.getNum1(), model.getNum2());
            case "%" -> CalculatorService.modulus(model.getNum1(), model.getNum2());
            default -> throw new AssertionError();

        };  
        ModelAndView modelAndView = new ModelAndView("calculator");
        modelAndView.addObject("result", result);
        return modelAndView;
    }
}
