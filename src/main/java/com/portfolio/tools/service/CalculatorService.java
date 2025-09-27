package com.portfolio.tools.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.portfolio.tools.model.calculatorModel;
import com.portfolio.tools.repo.historyOperationsRepo;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
@Service
public class CalculatorService {
    private final historyOperationsRepo hOperationsRepo;

    public int sum(calculatorModel cModel) {
        return cModel.getNum1() + cModel.getNum2();
    }

    public int subtract(calculatorModel cModel) {
        return cModel.getNum1() - cModel.getNum2();
    }

    public int multiply(calculatorModel cModel) {
        return cModel.getNum1() * cModel.getNum2();
    }

    public double divide(calculatorModel cModel) {
        if (cModel.getNum2() == 0)
            throw new ArithmeticException("Cannot divide by zero!");
        return (double) cModel.getNum1() / cModel.getNum2();
    }

    public int modulus(calculatorModel cModel) {
        if (cModel.getNum2() == 0)
            throw new ArithmeticException("Cannot modulus by zero!");
        return cModel.getNum1() % cModel.getNum2();
    }

    public void addOperation(calculatorModel Operation) {
        hOperationsRepo.addOperation(Operation);
    }

    public List<calculatorModel> getOperations() {
        return hOperationsRepo.getAllOperation();
    }

    public void clear() {
        hOperationsRepo.clearAll();
    }

}
