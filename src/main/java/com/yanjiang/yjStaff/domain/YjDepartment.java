package com.yanjiang.yjStaff.domain;

/**
 * Created by dllo on 18/2/28.
 */
public class YjDepartment {

    private String depId;
    private String depName;
    private String chiefId;

    public YjDepartment() {
    }

    public YjDepartment(String depId, String depName, String chiefId) {
        this.depId = depId;
        this.depName = depName;
        this.chiefId = chiefId;
    }

    @Override
    public String toString() {
        return "YjDepartment{" +
                "depId='" + depId + '\'' +
                ", depName='" + depName + '\'' +
                ", chiefId='" + chiefId + '\'' +
                '}';
    }

    public String getDepId() {
        return depId;
    }

    public void setDepId(String depId) {
        this.depId = depId;
    }

    public String getDepName() {
        return depName;
    }

    public void setDepName(String depName) {
        this.depName = depName;
    }

    public String getChiefId() {
        return chiefId;
    }

    public void setChiefId(String chiefId) {
        this.chiefId = chiefId;
    }
}
