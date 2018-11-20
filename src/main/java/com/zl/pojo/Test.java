package com.zl.pojo;

import com.bstek.urule.ClassUtils;

import java.io.File;


public class Test {

    public static void main(String[] args) {
        File file=new File("d:/customer.xml");
        ClassUtils.classToXml(Customer.class, file);
    }
}
