/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Course {

    private int CouseraID;
    private String Name;
    private String Image;
    private String Description;
    private int Status;
    private int UserID;
    private int Category_categoryID;
    private int Feestatus;
    private String Introduce;
    private int OriginalPrice;

    public Course() {
    }

    public int getCouseraID() {
        return CouseraID;
    }

    public void setCouseraID(int CouseraID) {
        this.CouseraID = CouseraID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public int getCategory_categoryID() {
        return Category_categoryID;
    }

    public void setCategory_categoryID(int Category_categoryID) {
        this.Category_categoryID = Category_categoryID;
    }

    public int getFeestatus() {
        return Feestatus;
    }

    public void setFeestatus(int Feestatus) {
        this.Feestatus = Feestatus;
    }

    public String getIntroduce() {
        return Introduce;
    }

    public void setIntroduce(String Introduce) {
        this.Introduce = Introduce;
    }

    public int getOriginalPrice() {
        return OriginalPrice;
    }

    public void setOriginalPrice(int OriginalPrice) {
        this.OriginalPrice = OriginalPrice;
    }

    public Course(int CouseraID, String Name, String Image, String Description, int Status, int UserID, int Category_categoryID, int Feestatus, String Introduce, int OriginalPrice) {
        this.CouseraID = CouseraID;
        this.Name = Name;
        this.Image = Image;
        this.Description = Description;
        this.Status = Status;
        this.UserID = UserID;
        this.Category_categoryID = Category_categoryID;
        this.Feestatus = Feestatus;
        this.Introduce = Introduce;
        this.OriginalPrice = OriginalPrice;
    }

    @Override
    public String toString() {
        return "Course{" + "CouseraID=" + CouseraID + ", Name=" + Name + ", Image=" + Image + ", Description=" + Description + ", Status=" + Status + ", UserID=" + UserID + ", Category_categoryID=" + Category_categoryID + ", Feestatus=" + Feestatus + ", Introduce=" + Introduce + ", OriginalPrice=" + OriginalPrice + '}';
    }

}
