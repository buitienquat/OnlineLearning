/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author vuduc
 */
public class Blog {
    private int BlogId;
    private String BlogTitle;
    private String BlogImage;
    private String BlogDetail;
    private Date PostDate;
    private int BlogStatus;
    private int BlogTagID;
    private int UserId;

    public Blog() {
    }

    public Blog(int BlogId, String BlogTitle, String BlogImage, String BlogDetail, Date PostDate, int BlogStatus, int BlogTagID, int UserId) {
        this.BlogId = BlogId;
        this.BlogTitle = BlogTitle;
        this.BlogImage = BlogImage;
        this.BlogDetail = BlogDetail;
        this.PostDate = PostDate;
        this.BlogStatus = BlogStatus;
        this.BlogTagID = BlogTagID;
        this.UserId = UserId;
    }

    public int getBlogId() {
        return BlogId;
    }

    public void setBlogId(int BlogId) {
        this.BlogId = BlogId;
    }

    public String getBlogTitle() {
        return BlogTitle;
    }

    public void setBlogTitle(String BlogTitle) {
        this.BlogTitle = BlogTitle;
    }

    public String getBlogImage() {
        return BlogImage;
    }

    public void setBlogImage(String BlogImage) {
        this.BlogImage = BlogImage;
    }

    public String getBlogDetail() {
        return BlogDetail;
    }

    public void setBlogDetail(String BlogDetail) {
        this.BlogDetail = BlogDetail;
    }

    public Date getPostDate() {
        return PostDate;
    }

    public void setPostDate(Date PostDate) {
        this.PostDate = PostDate;
    }

    public int getBlogStatus() {
        return BlogStatus;
    }

    public void setBlogStatus(int BlogStatus) {
        this.BlogStatus = BlogStatus;
    }

    public int getBlogTagID() {
        return BlogTagID;
    }

    public void setBlogTagID(int BlogTagID) {
        this.BlogTagID = BlogTagID;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int UserId) {
        this.UserId = UserId;
    }
    
}
