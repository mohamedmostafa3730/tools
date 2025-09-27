package com.portfolio.tools.service;

import org.springframework.stereotype.Service;

@Service
public class CalculatorService {

    public static int sum(int num1, int num2) {
        return num1 + num2;
    }

    public static int subtract(int num1, int num2) {
        return num1 - num2;
    }

    public static int multiply(int num1, int num2) {
        return num1 * num2;
    }

    public static double divide(int num1, int num2) {
        if (num2 == 0) {
            throw new ArithmeticException("Cannot divide by zero!");
        }
        return (double) num1 / num2;
    }

    public static int modulus(int num1, int num2) {
        if (num2 == 0) {
            throw new ArithmeticException("Cannot modulus by zero!");
        }
        return num1 % num2;
    }

}
