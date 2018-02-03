package com.yanjiang.basis.utils.impl.mail;

/**
 * Created by dllo on 17/11/18.
 */
import java.io.File;

public class AttachBean {
    private String cid;
    private File file;
    private String fileName;

    public String getCid() {
        return this.cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public File getFile() {
        return this.file;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public AttachBean() {
    }

    public AttachBean(File file, String fileName) {
        this.file = file;
        this.fileName = fileName;
    }
}
