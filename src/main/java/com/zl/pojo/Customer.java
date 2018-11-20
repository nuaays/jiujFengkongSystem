package com.zl.pojo;

import com.bstek.urule.model.Label;

import java.math.BigDecimal;

/**
 * @author Jacky.gao
 * @since 2016年9月29日
 */
public class Customer {
    @Label("客户编号")
    private String customerid;
    @Label("名称")
    private String name;
    @Label("年龄")
    private int age;
    @Label("出生日期")
    private String birthday;
    @Label("等级")
    private int level;
    @Label("手机号")
    private String mobile;
    @Label("性别")
    private boolean gender;
    @Label("是否有车")
    private boolean car;
    @Label("婚否")
    private boolean married;
    @Label("是否有房")
    private boolean house;
    @Label("是否放贷")
    private boolean loan;
    @Label("是否符合准入条件")
    private boolean allow;
    @Label("身份证信息是否真实")
    private boolean yourself;
    @Label("客户申请金额")
    private BigDecimal loanapply;
    @Label("客户试贷金额")
    private BigDecimal loanaggree;
    @Label("客户放贷金额")
    private BigDecimal loanfinal;
    @Label("授信额度")
    private BigDecimal loanlimit;
    @Label("负债比率")
    private Double loaned;
    @Label("固定资产")
    private BigDecimal fixedassets;
    @Label("征信信息是否真实")
    private boolean isCreditTrue;
    @Label("担保信息是否真实")
    private boolean isguaranteeTrue;
    @Label("是否通过初审")
    private boolean isFirstPass;
    @Label("是否通过二审")
    private boolean isSecondPass;
    @Label("信用分值")
    private Double score;

    public String getCustomerid() {
        return customerid;
    }

    public void setCustomerid(String customerid) {
        this.customerid = customerid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getBirthday() {
        return birthday;
    }
    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public boolean isCar() {
        return car;
    }

    public void setCar(boolean car) {
        this.car = car;
    }

    public boolean isMarried() {
        return married;
    }

    public void setMarried(boolean married) {
        this.married = married;
    }

    public boolean isHouse() {
        return house;
    }

    public void setHouse(boolean house) {
        this.house = house;
    }

    public boolean isLoan() {
        return loan;
    }

    public void setLoan(boolean loan) {
        this.loan = loan;
    }

    public boolean isAllow() {
        return allow;
    }

    public void setAllow(boolean allow) {
        this.allow = allow;
    }

    public boolean isYourself() {
        return yourself;
    }

    public void setYourself(boolean yourself) {
        this.yourself = yourself;
    }

    public BigDecimal getLoanapply() {
        return loanapply;
    }

    public void setLoanapply(BigDecimal loanapply) {
        this.loanapply = loanapply;
    }

    public BigDecimal getLoanaggree() {
        return loanaggree;
    }

    public void setLoanaggree(BigDecimal loanaggree) {
        this.loanaggree = loanaggree;
    }

    public BigDecimal getLoanfinal() {
        return loanfinal;
    }

    public void setLoanfinal(BigDecimal loanfinal) {
        this.loanfinal = loanfinal;
    }

    public BigDecimal getLoanlimit() {
        return loanlimit;
    }

    public void setLoanlimit(BigDecimal loanlimit) {
        this.loanlimit = loanlimit;
    }

    public Double getLoaned() {
        return loaned;
    }

    public void setLoaned(Double loaned) {
        this.loaned = loaned;
    }

    public BigDecimal getFixedassets() {
        return fixedassets;
    }

    public void setFixedassets(BigDecimal fixedassets) {
        this.fixedassets = fixedassets;
    }

    public boolean isCreditTrue() {
        return isCreditTrue;
    }

    public void setCreditTrue(boolean creditTrue) {
        isCreditTrue = creditTrue;
    }

    public boolean isIsguaranteeTrue() {
        return isguaranteeTrue;
    }

    public void setIsguaranteeTrue(boolean isguaranteeTrue) {
        this.isguaranteeTrue = isguaranteeTrue;
    }

    public boolean isFirstPass() {
        return isFirstPass;
    }

    public void setFirstPass(boolean firstPass) {
        isFirstPass = firstPass;
    }

    public boolean isSecondPass() {
        return isSecondPass;
    }

    public void setSecondPass(boolean secondPass) {
        isSecondPass = secondPass;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }
}