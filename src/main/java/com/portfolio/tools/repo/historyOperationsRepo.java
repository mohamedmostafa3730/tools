package com.portfolio.tools.repo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.portfolio.tools.model.calculatorModel;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Repository
public class historyOperationsRepo {
    private List<calculatorModel> Operations = new ArrayList<>();

    public void addOperation(calculatorModel Operation) {
        Operations.addFirst(Operation);
    }

    public void clearAll() {
        Operations.clear();
    }

    public List<calculatorModel> getAllOperation() {
        List<calculatorModel> tempOperations = new ArrayList<>();
        for (var Operation : Operations) {
            tempOperations.add(Operation);
        }
        return tempOperations;
    }

}
