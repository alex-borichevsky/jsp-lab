package com.example.demo1;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

public class ParamsTag extends TagSupport {
    private String a;
//    private String b;
//    private String c;
//
//    public String getC() {
//        return c;
//    }
//
//    public void setC(String c) {
//        this.c = c;
//    }
//
//    public String getB() {
//        return b;
//    }
//
//    public void setB(String b) {
//        this.b = b;
//    }

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    @Override
    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();

        try {
            out.println(a);

            out.print("<br/>");
//            out.print(b);
//            out.print(c);
        } catch (IOException e) {
           throw new JspException(e);
        }
        return EVAL_BODY_INCLUDE;
    }
}
