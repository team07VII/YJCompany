package com.yanjiang.researchRA.domain;

import java.io.Serializable;

/**
 * Created by dllo on 18/2/6.
 */
public class ApplicationUnit implements Serializable {
    private int aid;
    private String aname;


    public ApplicationUnit() {
    }

    public ApplicationUnit(String aname) {
        this.aname = aname;
    }

    @Override
    public String toString() {
        return "ApplicationUnit{" +
                "aid=" + aid +
                ", aname='" + aname + '\'' +
                '}';
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }
}
