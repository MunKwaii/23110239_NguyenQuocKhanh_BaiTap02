package com.example.demo.models;

public class Category {
    private int cateid;
    private String catename;
    private String icon;

    public Category() {
    }

    public Category(int cateid, String icon, String catename) {
        this.cateid = cateid;
        this.icon = icon;
        this.catename = catename;
    }

    public int getCateid() {
        return cateid;
    }

    public void setCateid(int cateid) {
        this.cateid = cateid;
    }

    public String getCatename() {
        return catename;
    }

    public void setCatename(String catename) {
        this.catename = catename;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }
}
