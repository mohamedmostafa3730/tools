package com.portfolio.tools.model;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Component
public class calculatorModel {
    private int num1;
    private int num2;
    private String operator;
}
