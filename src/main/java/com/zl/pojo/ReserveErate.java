package com.zl.pojo;


public class ReserveErate {

  private String accountmonth;
  private String currency;
  private String efficientdate;
  private Double exchangevalue;


  public String getAccountmonth() {
    return accountmonth;
  }

  public void setAccountmonth(String accountmonth) {
    this.accountmonth = accountmonth;
  }


  public String getCurrency() {
    return currency;
  }

  public void setCurrency(String currency) {
    this.currency = currency;
  }


  public String getEfficientdate() {
    return efficientdate;
  }

  public void setEfficientdate(String efficientdate) {
    this.efficientdate = efficientdate;
  }


  public Double getExchangevalue() {
    return exchangevalue;
  }

  public void setExchangevalue(Double exchangevalue) {
    this.exchangevalue = exchangevalue;
  }

}
