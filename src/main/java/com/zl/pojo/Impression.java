package com.zl.pojo;

import com.bstek.urule.model.Label;

public class Impression {
    @Label("总体印象")
    private String impress;

    public String getImpress() {
        return impress;
    }

    public void setImpress(String impress) {
        this.impress = impress;
    }
}
