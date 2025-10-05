package com.portfolio.tools.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class calculatorModel {
    private int num1;
    private int num2;
    private String operator;
    private double result;
}