package com.yanjiang.researchRA.domain;

import java.io.Serializable;

/**
 * Created by dllo on 18/2/6.
 */
public class CombineUnit implements Serializable {
    private int cid;
    private String cname;

    public CombineUnit() {
    }

    public CombineUnit(String cname) {
        this.cname = cname;
    }

    @Override
    public String toString() {
        return "CombineUnit{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                '}';
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }
}
