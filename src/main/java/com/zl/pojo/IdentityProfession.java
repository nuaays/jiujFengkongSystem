package com.zl.pojo;

import com.bstek.urule.model.Label;

import java.util.Date;

public class IdentityProfession{
    @Label("年龄")
    private Integer age;
    @Label("性别")
    private boolean gender;
    @Label("户籍")
    private String birthplace;
    @Label("教育程度")
    private String education;
    @Label("职业单位")
    private String career;
    @Label("职位")
    private String position;
    @Label("现时工作时长")
    private Date workingtime;
    @Label("婚姻状况")
    private String maritalstatus;
    @Label("配偶职业")
    private String comcareer;
    @Label("配偶职位")
    private String composition;


        public Integer getAge() {
            return age;
        }

        public void setAge(Integer age) {
            this.age = age;
        }

        public boolean isGender() {
            return gender;
        }

        public void setGender(boolean gender) {
            this.gender = gender;
        }

        public String getBirthplace() {
            return birthplace;
        }

        public void setBirthplace(String birthplace) {
            this.birthplace = birthplace;
        }

        public String getEducation() {
            return education;
        }

        public void setEducation(String education) {
            this.education = education;
        }

        public String getCareer() {
            return career;
        }

        public void setCareer(String career) {
            this.career = career;
        }

        public String getPosition() {
            return position;
        }

        public void setPosition(String position) {
            this.position = position;
        }

        public Date getWorkingtime() {
            return workingtime;
        }

        public void setWorkingtime(Date workingtime) {
            this.workingtime = workingtime;
        }

    public String getMaritalstatus() {
        return maritalstatus;
    }

    public void setMaritalstatus(String maritalstatus) {
        this.maritalstatus = maritalstatus;
    }

    public String getComcareer() {
            return comcareer;
        }

        public void setComcareer(String comcareer) {
            this.comcareer = comcareer;
        }

        public String getComposition() {
            return composition;
        }

        public void setComposition(String composition) {
            this.composition = composition;
        }
}
