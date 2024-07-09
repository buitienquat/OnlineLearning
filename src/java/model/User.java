/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class User {

    private int UserID;
    private String Email;
    private String Phone;
    private String FullName;
    private String Image;
    private Date Dob;
    private String Address;
    private String GmailID;
    private int RoleID;
    private String CodeVerify;
    private int statusUserId;
    private String Username;
    private String Password;

    public User() {
    }

    public User(int UserID, String Email, String Phone, String FullName, String Image, Date Dob, String Address, String GmailID, int RoleID, String CodeVerify, int statusUserId, String Username, String Password) {
        this.UserID = UserID;
        this.Email = Email;
        this.Phone = Phone;
        this.FullName = FullName;
        this.Image = Image;
        this.Dob = Dob;
        this.Address = Address;
        this.GmailID = GmailID;
        this.RoleID = RoleID;
        this.CodeVerify = CodeVerify;
        this.statusUserId = statusUserId;
        this.Username = Username;
        this.Password = Password;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public Date getDob() {
        return Dob;
    }

    public void setDob(Date Dob) {
        this.Dob = Dob;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getGmailID() {
        return GmailID;
    }

    public void setGmailID(String GmailID) {
        this.GmailID = GmailID;
    }

    public int getRoleID() {
        return RoleID;
    }

    public void setRoleID(int RoleID) {
        this.RoleID = RoleID;
    }

    public String getCodeVerify() {
        return CodeVerify;
    }

    public void setCodeVerify(String CodeVerify) {
        this.CodeVerify = CodeVerify;
    }

    public int getStatusUserId() {
        return statusUserId;
    }

    public void setStatusUserId(int statusUserId) {
        this.statusUserId = statusUserId;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    @Override
    public String toString() {
        return "User{" + "UserID=" + UserID + ", Email=" + Email + ", Phone=" + Phone + ", FullName=" + FullName + ", Image=" + Image + ", Dob=" + Dob + ", Address=" + Address + ", GmailID=" + GmailID + ", RoleID=" + RoleID + ", CodeVerify=" + CodeVerify + ", statusUserId=" + statusUserId + ", Username=" + Username + ", Password=" + Password + '}';
    }
    
}
