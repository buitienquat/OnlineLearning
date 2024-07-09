/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hienhack
 */
public class BlogTag {
    private int BlogTagID;
    private String Name;

    public BlogTag() {
    }

    public BlogTag(int BlogTagID, String Name) {
        this.BlogTagID = BlogTagID;
        this.Name = Name;
    }

    public int getBlogTagID() {
        return BlogTagID;
    }

    public void setBlogTagID(int BlogTagID) {
        this.BlogTagID = BlogTagID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    @Override
    public String toString() {
        return "BlogTag{" + "BlogTagID=" + BlogTagID + ", Name=" + Name + '}';
    }
    
}

