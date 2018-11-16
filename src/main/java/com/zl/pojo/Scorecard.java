package com.zl.pojo;


public class Scorecard {

  private String id;
  private String gradetype;
  private String childname;
  private String parentname;
  private String lowgradebanlance;
  private String highgradebanlance;
  private Double gradetarget;
  private Double value;
  private Double goal;
  private String parentid;
  private String updatedate;


  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }


  public String getGradetype() {
    return gradetype;
  }

  public void setGradetype(String gradetype) {
    this.gradetype = gradetype;
  }


  public String getChildname() {
    return childname;
  }

  public void setChildname(String childname) {
    this.childname = childname;
  }


  public String getParentname() {
    return parentname;
  }

  public void setParentname(String parentname) {
    this.parentname = parentname;
  }


  public String getLowgradebanlance() {
    return lowgradebanlance;
  }

  public void setLowgradebanlance(String lowgradebanlance) {
    this.lowgradebanlance = lowgradebanlance;
  }


  public String getHighgradebanlance() {
    return highgradebanlance;
  }

  public void setHighgradebanlance(String highgradebanlance) {
    this.highgradebanlance = highgradebanlance;
  }


  public Double getGradetarget() {
    return gradetarget;
  }

  public void setGradetarget(Double gradetarget) {
    this.gradetarget = gradetarget;
  }


  public Double getValue() {
    return value;
  }

  public void setValue(Double value) {
    this.value = value;
  }


  public Double getGoal() {
    return goal;
  }

  public void setGoal(Double goal) {
    this.goal = goal;
  }


  public String getParentid() {
    return parentid;
  }

  public void setParentid(String parentid) {
    this.parentid = parentid;
  }


  public String getUpdatedate() {
    return updatedate;
  }

  public void setUpdatedate(String updatedate) {
    this.updatedate = updatedate;
  }

}
