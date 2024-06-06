/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author vuduc
 */
public class UserDBContext extends DBContext{
    public List<User> getAllUser() {
        List<User> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [User]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUserID(rs.getInt(1));
                user.setEmail(rs.getString(2));
                user.setPhone(rs.getString(3));
                user.setFullName(rs.getString(4));
                user. setImage(rs.getString(5));
                user. setDate(rs.getDate(6));
                user. setAddress(rs.getString(7));
                user. setGmailID(rs.getString(8));
                user. setRoleID(rs.getInt(9));
                 user. setCodeVerify(rs.getString(10));
                 user. setStatusUserId(rs.getInt(11));
                list.add(user);
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    
    public List<User> getUserbyRollid(int rollid) {
        List<User> list = new ArrayList<>();
        try {
            String sql = "select * from [User] where [User].RoleID = ?";

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, rollid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUserID(rs.getInt(1));
                user.setEmail(rs.getString(2));
                user.setPhone(rs.getString(3));
                user.setFullName(rs.getString(4));
                user. setImage(rs.getString(5));
                user. setDate(rs.getDate(6));
                user. setAddress(rs.getString(7));
                user. setGmailID(rs.getString(8));
                user. setRoleID(rs.getInt(9));
                 user. setCodeVerify(rs.getString(10));
                 user. setStatusUserId(rs.getInt(11));
                list.add(user);
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
        public List<User> search(String keyword) {
        List<User> list = new ArrayList<>();
        try {
            String sql = "select *  from [User] where FullName like ?";

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, "%" + keyword + "%");
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                 User user = new User();
                user.setUserID(rs.getInt(1));
                user.setEmail(rs.getString(2));
                user.setPhone(rs.getString(3));
                user.setFullName(rs.getString(4));
                user. setImage(rs.getString(5));
                user. setDate(rs.getDate(6));
                user. setAddress(rs.getString(7));
                user. setGmailID(rs.getString(8));
                user. setRoleID(rs.getInt(9));
                 user. setCodeVerify(rs.getString(10));
                 user. setStatusUserId(rs.getInt(11));
                list.add(user);
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
            public void updateAccount(int userid,int status) {
        try {
            String sql = "UPDATE [User] "
                    + "   SET statusUserId=?"
                    + "   WHERE UserID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, status);
            stm.setInt(2, userid);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
