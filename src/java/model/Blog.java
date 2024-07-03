/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author hienhack
 */
public class Blog {
     private int BlogID;
    private String BlogTitle;
    private String BlogImage;
    private String BlogDetail;
    private Date PostDate;
    private int BlogTagID;
    private boolean BlogStatus;
    private int UserID;
   

//    public Blog() {
//    }
//    
//    public Blog(int BlogID, String BlogTitle, String BlogImage, String BlogDetail, Date PostDate, int UserID, boolean BlogStatus, int BlogTagID) {
//        this.BlogID = BlogID;
//        this.BlogTitle = BlogTitle;
//        this.BlogImage = BlogImage;
//        this.BlogDetail = BlogDetail;
//        this.PostDate = PostDate;
//        this.UserID = UserID;
//        this.BlogStatus = BlogStatus;       
//        this.BlogTagID = BlogTagID;
//    }

    public Blog() {
    }

    public Blog(int BlogID, String BlogTitle, String BlogImage, String BlogDetail, Date PostDate, int BlogTagID, boolean BlogStatus, int UserID) {
        this.BlogID = BlogID;
        this.BlogTitle = BlogTitle;
        this.BlogImage = BlogImage;
        this.BlogDetail = BlogDetail;
        this.PostDate = PostDate;
        this.BlogTagID = BlogTagID;
        this.BlogStatus = BlogStatus;
        this.UserID = UserID;
    }
    
    

    
//
//    public int getBlogID() {
//        return BlogID;
//    }
//
//    public void setBlogID(int BlogID) {
//        this.BlogID = BlogID;
//    }
//
//    public String getBlogTitle() {
//        return BlogTitle;
//    }
//
//    public void setBlogTitle(String BlogTitle) {
//        this.BlogTitle = BlogTitle;
//    }
//
//    public String getBlogImage() {
//        return BlogImage;
//    }
//
//    public void setBlogImage(String BlogImage) {
//        this.BlogImage = BlogImage;
//    }
//
//    public String getBlogDetail() {
//        return BlogDetail;
//    }
//
//    public void setBlogDetail(String BlogDetail) {
//        this.BlogDetail = BlogDetail;
//    }
//
//    public Date getPostDate() {
//        return PostDate;
//    }
//
//    public void setPostDate(Date PostDate) {
//        this.PostDate = PostDate;
//    }
//
//    public int getUserID() {
//        return UserID;
//    }
//
//    public void setUserID(int UserID) {
//        this.UserID = UserID;
//    }
//
////    public String getUserName() {
////        return UserName;
////    }
////
////    public void setUserName(String UserName) {
////        this.UserName = UserName;
////    }
//
//    public boolean isBlogStatus() {
//        return BlogStatus;
//    }
//
//    public void setBlogStatus(boolean BlogStatus) {
//        this.BlogStatus = BlogStatus;
//    }
//
//    public int getBlogTagID() {
//        return BlogTagID;
//    }
//
//    public void setBlogTagID(int BlogTagID) {
//        this.BlogTagID = BlogTagID;
//    }
//
////    public String getName() {
////        return Name;
////    }
////
////    public void setName(String Name) {
////        this.Name = Name;
////    }
//
////    @Override
////    public String toString() {
////        return "Blog{" + "BlogID=" + BlogID + ", BlogTitle=" + BlogTitle + ", BlogImage=" + BlogImage + ", BlogDetail=" + BlogDetail + ", PostDate=" + PostDate + ", UserID=" + UserID + ", UserName=" + UserName + ", BlogStatus=" + BlogStatus + ", BlogTagID=" + BlogTagID + ", Name=" + Name + '}';
////    }
//
//    @Override
//    public String toString() {
//        return "Blog{" + "BlogID=" + BlogID + ", BlogTitle=" + BlogTitle + ", BlogImage=" + BlogImage + ", BlogDetail=" + BlogDetail + ", PostDate=" + PostDate + ", UserID=" + UserID + ", BlogStatus=" + BlogStatus + ", BlogTagID=" + BlogTagID + '}';
//    }

    public int getBlogID() {
        return BlogID;
    }

    public void setBlogID(int BlogID) {
        this.BlogID = BlogID;
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

    public int getBlogTagID() {
        return BlogTagID;
    }

    public void setBlogTagID(int BlogTagID) {
        this.BlogTagID = BlogTagID;
    }

    public boolean isBlogStatus() {
        return BlogStatus;
    }

    public void setBlogStatus(boolean BlogStatus) {
        this.BlogStatus = BlogStatus;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    @Override
    public String toString() {
        return "Blog{" + "BlogID=" + BlogID + ", BlogTitle=" + BlogTitle + ", BlogImage=" + BlogImage + ", BlogDetail=" + BlogDetail + ", PostDate=" + PostDate + ", BlogTagID=" + BlogTagID + ", BlogStatus=" + BlogStatus + ", UserID=" + UserID + '}';
    }

   
    
    
}
