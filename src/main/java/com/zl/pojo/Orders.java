package com.zl.pojo;

import java.util.Date;

public class Orders {

  private Double id;
  private String userId;
  private Double numbers;
  private Date createtime;
  private String note;


  public Double getId() {
    return id;
  }

  public void setId(Double id) {
    this.id = id;
  }


  public String getUserId() {
    return userId;
  }

  public void setUserId(String userId) {
    this.userId = userId;
  }


  public Double getNumbers() {
    return numbers;
  }

  public void setNumbers(Double numbers) {
    this.numbers = numbers;
  }


  public Date getCreatetime() {
    return createtime;
  }

  public void setCreatetime(Date createtime) {
    this.createtime = createtime;
  }


  public String getNote() {
    return note;
  }

  public void setNote(String note) {
    this.note = note;
  }

}
