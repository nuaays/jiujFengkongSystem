package com.zl.pojo;

public class Scorecard {
    private  String Id ;
    private	String gradeType;
    private String childname;
    private String parentname ;
    private String lowgradebanlance ;
    private String highgradebanlance ;
    private String gradeTarget;
    private Double value;
    private Double goal	;
    private String parentId	;
    private String updatedate ;

    @Override
    public String toString() {
        return "Scorecard{" +
                "Id='" + Id + '\'' +
                ", gradeType='" + gradeType + '\'' +
                ", childname='" + childname + '\'' +
                ", parentname='" + parentname + '\'' +
                ", lowgradebanlance='" + lowgradebanlance + '\'' +
                ", highgradebanlance='" + highgradebanlance + '\'' +
                ", gradeTarget='" + gradeTarget + '\'' +
                ", value=" + value +
                ", goal=" + goal +
                ", parentId='" + parentId + '\'' +
                ", updatedate='" + updatedate + '\'' +
                '}';
    }

    public Scorecard() {

    }

    public Scorecard(String id, String gradeType, String childname, String parentname, String lowgradebanlance, String highgradebanlance, String gradeTarget, Double value, Double goal, String parentId, String updatedate) {
        Id = id;
        this.gradeType = gradeType;
        this.childname = childname;
        this.parentname = parentname;
        this.lowgradebanlance = lowgradebanlance;
        this.highgradebanlance = highgradebanlance;
        this.gradeTarget = gradeTarget;
        this.value = value;
        this.goal = goal;
        this.parentId = parentId;
        this.updatedate = updatedate;
    }

    public String getId() {
        return Id;
    }

    public void setId(String id) {
        Id = id;
    }

    public String getGradeType() {
        return gradeType;
    }

    public void setGradeType(String gradeType) {
        this.gradeType = gradeType;
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

    public String getGradeTarget() {
        return gradeTarget;
    }

    public void setGradeTarget(String gradeTarget) {
        this.gradeTarget = gradeTarget;
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

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getUpdatedate() {
        return updatedate;
    }

    public void setUpdatedate(String updatedate) {
        this.updatedate = updatedate;
    }
}
