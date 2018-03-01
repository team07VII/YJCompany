package com.yanjiang.researchRA.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by dllo on 18/2/5.
 */
public class RdmsProjBase implements Serializable {

//    业务主键
    private String projId;
//    名称
    private String projName;
//    项目类型
    private String projType;
//    申请单位
    private String appOrgNo;
//    申请单位名称
    private String appOrgOame;
//    联合申报单位
    private String uniteAppOrgNo;
//    联合申报单位名称
    private String uniteAppOrgName;
//    周期
    private int cycle;
//    总预算
    private double totalBudget;
//    项目目的
    private String purpose;
//    安全性描述
    private String safeDesc;
//    可靠性描述
    private String reliableDesc;
//    可靠性描述
    private String econDesc;
//    其他维度分析
    private String otherDesc;
//    成果应用
    private String achievementDesc;
//    实际用户
    private String realUser;
//    潜在用户
    private String potentialUser;
//    项目内容
    private String content;
//    项目负责人
    private String primeStaffNo;
//    项目负责人描述
    private String primeUserDesc;
//    预计产权说明
    private String rightDesc;
//    经济效益
    private String benefitsDesc;
//    固定资产
    private String fixedAssets;
//    验收标准
    private String acceptStand;
//    工程师审批结果
    private String engineerEvaluate;
//    符合性审定
    private String accordEvaluate;
//    项目应用领域评价
    private String applicationEvaluate;
//    总体评价
    private String totalEvaluate;
//    要求
    private String pmsRequire;
//    建议
    private String advice;
//    是否有效 参见码表
    private String effectFlag;
//    创建人
    private String createStaffNo;
//    创建人姓名
    private String createStaffName;
//    创建时间
    private Date createDate;

    @Override
    public String toString() {
        return "RdmsProjBase{" +
                "projId='" + projId + '\'' +
                ", projName='" + projName + '\'' +
                ", projType='" + projType + '\'' +
                ", appOrgNo='" + appOrgNo + '\'' +
                ", appOrgOame='" + appOrgOame + '\'' +
                ", uniteAppOrgNo='" + uniteAppOrgNo + '\'' +
                ", uniteAppOrgName='" + uniteAppOrgName + '\'' +
                ", cycle=" + cycle +
                ", totalBudget=" + totalBudget +
                ", purpose='" + purpose + '\'' +
                ", safeDesc='" + safeDesc + '\'' +
                ", reliableDesc='" + reliableDesc + '\'' +
                ", econDesc='" + econDesc + '\'' +
                ", otherDesc='" + otherDesc + '\'' +
                ", achievementDesc='" + achievementDesc + '\'' +
                ", realUser='" + realUser + '\'' +
                ", potentialUser='" + potentialUser + '\'' +
                ", content='" + content + '\'' +
                ", primeStaffNo='" + primeStaffNo + '\'' +
                ", primeUserDesc='" + primeUserDesc + '\'' +
                ", rightDesc='" + rightDesc + '\'' +
                ", benefitsDesc='" + benefitsDesc + '\'' +
                ", fixedAssets='" + fixedAssets + '\'' +
                ", acceptStand='" + acceptStand + '\'' +
                ", engineerEvaluate='" + engineerEvaluate + '\'' +
                ", accordEvaluate='" + accordEvaluate + '\'' +
                ", applicationEvaluate='" + applicationEvaluate + '\'' +
                ", totalEvaluate='" + totalEvaluate + '\'' +
                ", pmsRequire='" + pmsRequire + '\'' +
                ", advice='" + advice + '\'' +
                ", effectFlag='" + effectFlag + '\'' +
                ", createStaffNo='" + createStaffNo + '\'' +
                ", createStaffName='" + createStaffName + '\'' +
                ", createDate=" + createDate +
                '}';
    }

    public RdmsProjBase(String projId, String projName, String projType, String appOrgNo, String appOrgOame, String uniteAppOrgNo, String uniteAppOrgName, int cycle, double totalBudget, String purpose, String safeDesc, String reliableDesc, String econDesc, String otherDesc, String achievementDesc, String realUser, String potentialUser, String content, String primeStaffNo, String primeUserDesc, String rightDesc, String benefitsDesc, String fixedAssets, String acceptStand, String engineerEvaluate, String accordEvaluate, String applicationEvaluate, String totalEvaluate, String pmsRequire, String advice, String effectFlag, String createStaffNo, String createStaffName, Date createDate) {
        this.projId = projId;
        this.projName = projName;
        this.projType = projType;
        this.appOrgNo = appOrgNo;
        this.appOrgOame = appOrgOame;
        this.uniteAppOrgNo = uniteAppOrgNo;
        this.uniteAppOrgName = uniteAppOrgName;
        this.cycle = cycle;
        this.totalBudget = totalBudget;
        this.purpose = purpose;
        this.safeDesc = safeDesc;
        this.reliableDesc = reliableDesc;
        this.econDesc = econDesc;
        this.otherDesc = otherDesc;
        this.achievementDesc = achievementDesc;
        this.realUser = realUser;
        this.potentialUser = potentialUser;
        this.content = content;
        this.primeStaffNo = primeStaffNo;
        this.primeUserDesc = primeUserDesc;
        this.rightDesc = rightDesc;
        this.benefitsDesc = benefitsDesc;
        this.fixedAssets = fixedAssets;
        this.acceptStand = acceptStand;
        this.engineerEvaluate = engineerEvaluate;
        this.accordEvaluate = accordEvaluate;
        this.applicationEvaluate = applicationEvaluate;
        this.totalEvaluate = totalEvaluate;
        this.pmsRequire = pmsRequire;
        this.advice = advice;
        this.effectFlag = effectFlag;
        this.createStaffNo = createStaffNo;
        this.createStaffName = createStaffName;
        this.createDate = createDate;
    }

    public RdmsProjBase() {
    }

    public String getProjId() {
        return projId;
    }

    public void setProjId(String projId) {
        this.projId = projId;
    }

    public String getProjName() {
        return projName;
    }

    public void setProjName(String projName) {
        this.projName = projName;
    }

    public String getProjType() {
        return projType;
    }

    public void setProjType(String projType) {
        this.projType = projType;
    }

    public String getAppOrgNo() {
        return appOrgNo;
    }

    public void setAppOrgNo(String appOrgNo) {
        this.appOrgNo = appOrgNo;
    }

    public String getAppOrgOame() {
        return appOrgOame;
    }

    public void setAppOrgOame(String appOrgOame) {
        this.appOrgOame = appOrgOame;
    }

    public String getUniteAppOrgNo() {
        return uniteAppOrgNo;
    }

    public void setUniteAppOrgNo(String uniteAppOrgNo) {
        this.uniteAppOrgNo = uniteAppOrgNo;
    }

    public String getUniteAppOrgName() {
        return uniteAppOrgName;
    }

    public void setUniteAppOrgName(String uniteAppOrgName) {
        this.uniteAppOrgName = uniteAppOrgName;
    }

    public int getCycle() {
        return cycle;
    }

    public void setCycle(int cycle) {
        this.cycle = cycle;
    }

    public double getTotalBudget() {
        return totalBudget;
    }

    public void setTotalBudget(double totalBudget) {
        this.totalBudget = totalBudget;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getSafeDesc() {
        return safeDesc;
    }

    public void setSafeDesc(String safeDesc) {
        this.safeDesc = safeDesc;
    }

    public String getReliableDesc() {
        return reliableDesc;
    }

    public void setReliableDesc(String reliableDesc) {
        this.reliableDesc = reliableDesc;
    }

    public String getEconDesc() {
        return econDesc;
    }

    public void setEconDesc(String econDesc) {
        this.econDesc = econDesc;
    }

    public String getOtherDesc() {
        return otherDesc;
    }

    public void setOtherDesc(String otherDesc) {
        this.otherDesc = otherDesc;
    }

    public String getAchievementDesc() {
        return achievementDesc;
    }

    public void setAchievementDesc(String achievementDesc) {
        this.achievementDesc = achievementDesc;
    }

    public String getRealUser() {
        return realUser;
    }

    public void setRealUser(String realUser) {
        this.realUser = realUser;
    }

    public String getPotentialUser() {
        return potentialUser;
    }

    public void setPotentialUser(String potentialUser) {
        this.potentialUser = potentialUser;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPrimeStaffNo() {
        return primeStaffNo;
    }

    public void setPrimeStaffNo(String primeStaffNo) {
        this.primeStaffNo = primeStaffNo;
    }

    public String getPrimeUserDesc() {
        return primeUserDesc;
    }

    public void setPrimeUserDesc(String primeUserDesc) {
        this.primeUserDesc = primeUserDesc;
    }

    public String getRightDesc() {
        return rightDesc;
    }

    public void setRightDesc(String rightDesc) {
        this.rightDesc = rightDesc;
    }

    public String getBenefitsDesc() {
        return benefitsDesc;
    }

    public void setBenefitsDesc(String benefitsDesc) {
        this.benefitsDesc = benefitsDesc;
    }

    public String getFixedAssets() {
        return fixedAssets;
    }

    public void setFixedAssets(String fixedAssets) {
        this.fixedAssets = fixedAssets;
    }

    public String getAcceptStand() {
        return acceptStand;
    }

    public void setAcceptStand(String acceptStand) {
        this.acceptStand = acceptStand;
    }

    public String getEngineerEvaluate() {
        return engineerEvaluate;
    }

    public void setEngineerEvaluate(String engineerEvaluate) {
        this.engineerEvaluate = engineerEvaluate;
    }

    public String getAccordEvaluate() {
        return accordEvaluate;
    }

    public void setAccordEvaluate(String accordEvaluate) {
        this.accordEvaluate = accordEvaluate;
    }

    public String getApplicationEvaluate() {
        return applicationEvaluate;
    }

    public void setApplicationEvaluate(String applicationEvaluate) {
        this.applicationEvaluate = applicationEvaluate;
    }

    public String getTotalEvaluate() {
        return totalEvaluate;
    }

    public void setTotalEvaluate(String totalEvaluate) {
        this.totalEvaluate = totalEvaluate;
    }

    public String getPmsRequire() {
        return pmsRequire;
    }

    public void setPmsRequire(String pmsRequire) {
        this.pmsRequire = pmsRequire;
    }

    public String getAdvice() {
        return advice;
    }

    public void setAdvice(String advice) {
        this.advice = advice;
    }

    public String getEffectFlag() {
        return effectFlag;
    }

    public void setEffectFlag(String effectFlag) {
        this.effectFlag = effectFlag;
    }

    public String getCreateStaffNo() {
        return createStaffNo;
    }

    public void setCreateStaffNo(String createStaffNo) {
        this.createStaffNo = createStaffNo;
    }

    public String getCreateStaffName() {
        return createStaffName;
    }

    public void setCreateStaffName(String createStaffName) {
        this.createStaffName = createStaffName;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }


}

