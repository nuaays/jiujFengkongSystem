package com.zl.pojo;

import com.bstek.urule.model.Label;

public class Credit {
    @Label("个人贷款记录年限")
    private Integer loanrecordYear;
    @Label("个人贷款累计有效违约率")
    private Double effiLoan;

    public Integer getLoanrecordYear() {
        return loanrecordYear;
    }

    public void setLoanrecordYear(Integer loanrecordYear) {
        this.loanrecordYear = loanrecordYear;
    }

    public Double getEffiLoan() {
        return effiLoan;
    }

    public void setEffiLoan(Double effiLoan) {
        this.effiLoan = effiLoan;
    }
}
