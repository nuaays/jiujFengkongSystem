package com.zl.pojo;


public class ClassifyData {

  private Double evaluatescore;
  private String itemno;
  private String itemvalue;
  private String objectno;
  private String objecttype;
  private String serialno;

  private ClassifyRecord classifyRecord;

  public ClassifyRecord getClassifyRecord() {
    return classifyRecord;
  }

  public void setClassifyRecord(ClassifyRecord classifyRecord) {
    this.classifyRecord = classifyRecord;
  }

  public Double getEvaluatescore() {
    return evaluatescore;
  }

  public void setEvaluatescore(Double evaluatescore) {
    this.evaluatescore = evaluatescore;
  }


  public String getItemno() {
    return itemno;
  }

  public void setItemno(String itemno) {
    this.itemno = itemno;
  }


  public String getItemvalue() {
    return itemvalue;
  }

  public void setItemvalue(String itemvalue) {
    this.itemvalue = itemvalue;
  }


  public String getObjectno() {
    return objectno;
  }

  public void setObjectno(String objectno) {
    this.objectno = objectno;
  }


  public String getObjecttype() {
    return objecttype;
  }

  public void setObjecttype(String objecttype) {
    this.objecttype = objecttype;
  }


  public String getSerialno() {
    return serialno;
  }

  public void setSerialno(String serialno) {
    this.serialno = serialno;
  }

  public ClassifyData() {
  }

  public ClassifyData(Double evaluatescore, String itemno, String itemvalue, String objectno, String objecttype, String serialno) {
    this.evaluatescore = evaluatescore;
    this.itemno = itemno;
    this.itemvalue = itemvalue;
    this.objectno = objectno;
    this.objecttype = objecttype;
    this.serialno = serialno;
  }

  @Override
  public String toString() {
    return "ClassifyData{" +
            "evaluatescore=" + evaluatescore +
            ", itemno='" + itemno + '\'' +
            ", itemvalue='" + itemvalue + '\'' +
            ", objectno='" + objectno + '\'' +
            ", objecttype='" + objecttype + '\'' +
            ", serialno='" + serialno + '\'' +
            '}';
  }
}
