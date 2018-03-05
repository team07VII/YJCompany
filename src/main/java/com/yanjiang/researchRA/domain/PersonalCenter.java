package com.yanjiang.researchRA.domain;

import javax.xml.crypto.Data;

/**
 * Created by dllo on 18/3/2.
 */
public class PersonalCenter {
    private int processId;
//    项目名称
    private String processName;
//    所属部门
    private String departmentName;
//    当前环节
    private String currentLink;
//    申请人名字
    private String applyName;
//    申请时间
    private Data applyTime;

    public PersonalCenter(int processId, String processName, String departmentName, String currentLink, String applyName, Data applyTime) {
        this.processId = processId;
        this.processName = processName;
        this.departmentName = departmentName;
        this.currentLink = currentLink;
        this.applyName = applyName;
        this.applyTime = applyTime;
    }

    public PersonalCenter() {
    }

    @Override
    public String toString() {
        return "PersonalCenter{" +
                "processId=" + processId +
                ", processName='" + processName + '\'' +
                ", departmentName='" + departmentName + '\'' +
                ", currentLink='" + currentLink + '\'' +
                ", applyName='" + applyName + '\'' +
                ", applyTime=" + applyTime +
                '}';
    }

    public int getProcessId() {
        return processId;
    }

    public void setProcessId(int processId) {
        this.processId = processId;
    }

    public String getProcessName() {
        return processName;
    }

    public void setProcessName(String processName) {
        this.processName = processName;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public String getCurrentLink() {
        return currentLink;
    }

    public void setCurrentLink(String currentLink) {
        this.currentLink = currentLink;
    }

    public String getApplyName() {
        return applyName;
    }

    public void setApplyName(String applyName) {
        this.applyName = applyName;
    }

    public Data getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(Data applyTime) {
        this.applyTime = applyTime;
    }
}
