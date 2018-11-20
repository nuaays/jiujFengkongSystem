package com.zl.pojo;

import com.bstek.urule.model.Label;

import java.math.BigDecimal;

public class ReimbursementCapacity {
    @Label("现住房产权性质")
    private String rightOfHouse;
    @Label("拥有固定资产")
    private BigDecimal fixedassets;
    @Label("个人年收入")
    private BigDecimal eachYearSalary;
    @Label("家庭年收入")
    private BigDecimal eachYearfamilySalary;
    @Label("负债比率")
    private Double loanrate;
    @Label("保险")
    private String insurance;


    public String getRightOfHouse() {
        return rightOfHouse;
    }

    public void setRightOfHouse(String rightOfHouse) {
        this.rightOfHouse = rightOfHouse;
    }

    public BigDecimal getFixedassets() {
        return fixedassets;
    }

    public void setFixedassets(BigDecimal fixedassets) {
        this.fixedassets = fixedassets;
    }

    public BigDecimal getEachYearSalary() {
        return eachYearSalary;
    }

    public void setEachYearSalary(BigDecimal eachYearSalary) {
        this.eachYearSalary = eachYearSalary;
    }

    public BigDecimal getEachYearfamilySalary() {
        return eachYearfamilySalary;
    }

    public void setEachYearfamilySalary(BigDecimal eachYearfamilySalary) {
        this.eachYearfamilySalary = eachYearfamilySalary;
    }

    public Double getLoanrate() {
        return loanrate;
    }

    public void setLoanrate(Double loanrate) {
        this.loanrate = loanrate;
    }

    public String getInsurance() {
        return insurance;
    }

    public void setInsurance(String insurance) {
        this.insurance = insurance;
    }
}
