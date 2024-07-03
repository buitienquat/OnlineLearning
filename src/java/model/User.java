/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.time.LocalDate;
import java.util.Date;
/**
 *
 * @author vuduc
 */
public class User {
    
    private int UserID;
    private String Email;
    private String Phone;
    private String FullName;
    private String Image;
    private Date date;
   private String Address;
     private String GmailID;
    private int RoleID;
    private String  CodeVerify;
    private int statusUserId;
    private String Username;
    private String Password;

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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
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

    public User(int UserID, String Email, String Phone, String FullName, String Image, Date date, String Address, String GmailID, int RoleID, String CodeVerify, int statusUserId, String Username, String Password) {
        this.UserID = UserID;
        this.Email = Email;
        this.Phone = Phone;
        this.FullName = FullName;
        this.Image = Image;
        this.date = date;
        this.Address = Address;
        this.GmailID = GmailID;
        this.RoleID = RoleID;
        this.CodeVerify = CodeVerify;
        this.statusUserId = statusUserId;
        this.Username = Username;
        this.Password = Password;
    }
    

   

    public User() {
    }

    
    
}
