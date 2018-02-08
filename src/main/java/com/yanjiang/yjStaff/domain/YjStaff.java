package com.yanjiang.yjStaff.domain;
import java.io.Serializable;

/**
 * Created by dllo on 18/2/7.
 */
public class YjStaff implements Serializable {

    private String staffId;
    private String staffName;
    private String staffEmail;
    private String staffUsername;
    private String staffPwd;
    private int staffDepId;

    public YjStaff(String staffName, String staffEmail, String staffUsername, String staffPwd, int staffDepId) {
        this.staffName = staffName;
        this.staffEmail = staffEmail;
        this.staffUsername = staffUsername;
        this.staffPwd = staffPwd;
        this.staffDepId = staffDepId;
    }

    public YjStaff() {
    }

    public YjStaff(String staffId, String staffName) {
        this.staffId = staffId;
        this.staffName = staffName;
    }

    public YjStaff(String staffId, String staffName, String staffEmail, String staffUsername, String staffPwd, int staffDepId) {
        this.staffId = staffId;
        this.staffName = staffName;
        this.staffEmail = staffEmail;
        this.staffUsername = staffUsername;
        this.staffPwd = staffPwd;
        this.staffDepId = staffDepId;
    }

    public String getStaffId() {
        return staffId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public String getStaffEmail() {
        return staffEmail;
    }

    public void setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail;
    }

    public String getStaffUsername() {
        return staffUsername;
    }

    public void setStaffUsername(String staffUsername) {
        this.staffUsername = staffUsername;
    }

    public String getStaffPwd() {
        return staffPwd;
    }

    public void setStaffPwd(String staffPwd) {
        this.staffPwd = staffPwd;
    }

    public int getStaffDepId() {
        return staffDepId;
    }

    public void setStaffDepId(int staffDepId) {
        this.staffDepId = staffDepId;
    }
}
