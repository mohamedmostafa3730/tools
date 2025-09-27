package com.portfolio.tools.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.tools.model.calculatorModel;
import com.portfolio.tools.service.CalculatorService;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Controller
public class CalculatorController {
    private final CalculatorService cService;

    @RequestMapping("calculator")
    public String CalculatorPage() {
        cService.clear();
        return "calculator";
    }

    @PostMapping("calculator")
    public ModelAndView getResult(calculatorModel model) {
        double result = switch (model.getOperator()) {
            case "+" -> cService.sum(model);
            case "-" -> cService.subtract(model);
            case "*" -> cService.multiply(model);
            case "/" -> cService.divide(model);
            case "%" -> cService.modulus(model);
            default -> throw new AssertionError();
        };

        model.setResult(result);
        cService.addOperation(model);

        ModelAndView modelAndView = new ModelAndView("calculator");

        modelAndView.addObject("result", result);
        modelAndView.addObject("operations", cService.getOperations());
        return modelAndView;
    }
}
