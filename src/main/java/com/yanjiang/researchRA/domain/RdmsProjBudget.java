package com.yanjiang.researchRA.domain;

import java.io.Serializable;

/**
 * Created by dllo on 18/2/5.
 */
public class RdmsProjBudget implements Serializable {

    private String budDetailId;
    private String busiTable;
    private String busiId;
    private String budgetType;
    private double budgetFee;

    public RdmsProjBudget() {
    }

    public RdmsProjBudget(String budDetailId, String busiTable, String busiId, String budgetType, double budgetFee) {
        this.budDetailId = budDetailId;
        this.busiTable = busiTable;
        this.busiId = busiId;
        this.budgetType = budgetType;
        this.budgetFee = budgetFee;
    }

    public String getBudDetailId() {
        return budDetailId;
    }

    public void setBudDetailId(String budDetailId) {
        this.budDetailId = budDetailId;
    }

    public String getBusiTable() {
        return busiTable;
    }

    public void setBusiTable(String busiTable) {
        this.busiTable = busiTable;
    }

    public String getBusiId() {
        return busiId;
    }

    public void setBusiId(String busiId) {
        this.busiId = busiId;
    }

    public String getBudgetType() {
        return budgetType;
    }

    public void setBudgetType(String budgetType) {
        this.budgetType = budgetType;
    }

    public double getBudgetFee() {
        return budgetFee;
    }

    public void setBudgetFee(double budgetFee) {
        this.budgetFee = budgetFee;
    }
}
