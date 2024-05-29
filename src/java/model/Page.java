/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Page {
    private int totalPage; // tổng số trang
    private int totalRecord; // tổng số record trong database
    private int page;
    private String urlPattern;

    public Page() {
    }

    public Page(int totalPage, int totalRecord, int page, String urlPattern) {
        this.totalPage = totalPage;
        this.totalRecord = totalRecord;
        this.page = page;
        this.urlPattern = urlPattern;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public String getUrlPattern() {
        return urlPattern;
    }

    public void setUrlPattern(String urlPattern) {
        this.urlPattern = urlPattern;
    }

    @Override
    public String toString() {
        return "Page{" + "totalPage=" + totalPage + ", totalRecord=" + totalRecord + ", page=" + page + ", urlPattern=" + urlPattern + '}';
    }
    
}
