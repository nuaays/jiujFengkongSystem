package test;

import com.zl.test.docheck;

public class TestM {
    public void toMemer() {
        String name = "张三";
        String customerid = "1000000";
        int level = 4;
        String mobile = "15567890345";
        boolean gender = true;
        boolean car = true;
        boolean married = false;
        boolean house = false;
        boolean loan = false;
        //@Label("是否符合准入条件")
        boolean allow = true;
        // @Label("身份证信息是否真实")
        boolean yourself = true;
        //@Label("客户申请金额")
        //BigDecimal loanapply = 3.4;
        // @Label("客户试贷金额")
        //BigDecimal loanaggree,
        //@Label("客户放贷金额")
        //BigDecimal loanfinal,
        // @Label("授信额度")
//        BigDecimal loanlimit,
        // @Label("负债比率")
        Double loaned = 0.7;
        // @Label("固定资产")
        // BigDecimal fixedassets = 45.6;
        //@Label("征信信息是否真实")
        boolean isCreditTrue = true;
        // @Label("担保信息是否真实")
        boolean isguaranteeTrue = true;
        // @Label("是否通过初审")
        boolean isFirstPass = true;
        // @Label("是否通过二审")
        boolean isSecondPass = true;
        // @Label("信用分值")
        Double score = 89.6;

        docheck doC = new docheck();

        //doC.doTest1 (name,customerid,level,mobile,gender,car,married,house,loan,allow,yourself,loaned,isCreditTrue,isguaranteeTrue,isFirstPass,isSecondPass,score);
                /*level,name,customerid,level,
                mobile,
                gender,
                car,
                married,
                house,
                loan,
                //@Label("是否符合准入条件")
                allow,
                // @Label("身份证信息是否真实")
                yourself,
                //@Label("客户申请金额")
                //BigDecimal loanapply,
                // @Label("客户试贷金额")
                //BigDecimal loanaggree,
                //@Label("客户放贷金额")
                //BigDecimal loanfinal,
                // @Label("授信额度")
                //BigDecimal loanlimit,
                // @Label("负债比率")
                loaned,
                // @Label("固定资产")
                //BigDecimal fixedassets,
                //@Label("征信信息是否真实")
                isCreditTrue,
                // @Label("担保信息是否真实")
                isguaranteeTrue,
                // @Label("是否通过初审")
                isFirstPass,
                // @Label("是否通过二审")
                isSecondPass,
                // @Label("信用分值")
                score*/
//                doC.doTest();
    }
}
