package com.zl.pojo;

import java.util.Date;

public class TbUser {

  private Double userid;

    @Override
    public String toString() {
        return "TbUser{" +
                "userid=" + userid +
                ", loginname='" + loginname + '\'' +
                ", loginpwd='" + loginpwd + '\'' +
                ", realname='" + realname + '\'' +
                ", sex='" + sex + '\'' +
                ", birthday=" + birthday +
                '}';
    }

    private String loginname;
  private String loginpwd;
  private String realname;
  private String sex;
  private Date birthday;


  public Double getUserid() {
    return userid;
  }

  public void setUserid(Double userid) {
    this.userid = userid;
  }


  public String getLoginname() {
    return loginname;
  }

  public void setLoginname(String loginname) {
    this.loginname = loginname;
  }


  public String getLoginpwd() {
    return loginpwd;
  }

  public void setLoginpwd(String loginpwd) {
    this.loginpwd = loginpwd;
  }


  public String getRealname() {
    return realname;
  }

  public void setRealname(String realname) {
    this.realname = realname;
  }


  public String getSex() {
    return sex;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }


  public Date getBirthday() {
    return birthday;
  }

  public void setBirthday(Date birthday) {
    this.birthday = birthday;
  }

}
