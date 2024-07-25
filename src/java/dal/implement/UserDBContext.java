package dal.implement;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

public class UserDBContext extends DBContext {

    public UserDBContext() {
        // Gọi phương thức getConnection để thiết lập kết nối
        this.connection = getConnection();
    }

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
                user.setImage(rs.getString(5));
                user.setDob(rs.getDate(6));
                user.setAddress(rs.getString(7));
                user.setGmailID(rs.getString(8));
                user.setRoleID(rs.getInt(9));
                user.setCodeVerify(rs.getString(10));
                user.setStatusUserId(rs.getInt(11));
                user.setUsername(rs.getString(12));
                user.setPassword(rs.getString(13));
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
                user.setImage(rs.getString(5));
                user.setDob(rs.getDate(6));
                user.setAddress(rs.getString(7));
                user.setGmailID(rs.getString(8));
                user.setRoleID(rs.getInt(9));
                user.setCodeVerify(rs.getString(10));
                user.setStatusUserId(rs.getInt(11));
                user.setUsername(rs.getString(12));
                user.setPassword(rs.getString(13));
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
            String sql = "select * from [User] where FullName like ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, "%" + keyword + "%");
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUserID(rs.getInt(1));
                user.setEmail(rs.getString(2));
                user.setPhone(rs.getString(3));
                user.setFullName(rs.getString(4));
                user.setImage(rs.getString(5));
                user.setDob(rs.getDate(6));
                user.setAddress(rs.getString(7));
                user.setGmailID(rs.getString(8));
                user.setRoleID(rs.getInt(9));
                user.setCodeVerify(rs.getString(10));
                user.setStatusUserId(rs.getInt(11));
                user.setUsername(rs.getString(12));
                user.setPassword(rs.getString(13));
                list.add(user);
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void removeAccount(int userid) {
        try {
            String sql = "Delete from [User] WHERE UserID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, userid);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

  public void updateAccount(int userid, int status,int role) {
        try {
            String sql = "UPDATE [User] SET statusUserId=?,RoleID=? WHERE UserID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, status);
            stm.setInt(2, role);
            stm.setInt(3, userid);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<User> getUsers(int offset, int limit) {
        List<User> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [User] ORDER BY UserID OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, offset);
            stm.setInt(2, limit);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUserID(rs.getInt(1));
                user.setEmail(rs.getString(2));
                user.setPhone(rs.getString(3));
                user.setFullName(rs.getString(4));
                user.setImage(rs.getString(5));
                user.setDob(rs.getDate(6));
                user.setAddress(rs.getString(7));
                user.setGmailID(rs.getString(8));
                user.setRoleID(rs.getInt(9));
                user.setCodeVerify(rs.getString(10));
                user.setStatusUserId(rs.getInt(11));
                user.setUsername(rs.getString(12));
                user.setPassword(rs.getString(13));
                list.add(user);
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int getTotalUsers() {
        int count = 0;
        try {
            String sql = "SELECT COUNT(*) FROM [User]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public void ChangePassword(int userid, String pass) {
        try {
            String sql = "UPDATE [User] SET Password=? WHERE UserID =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, pass);
            stm.setInt(2, userid);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int countUsersByRole(int roleId) {
        int count = 0;
        try {
            String sql = "SELECT COUNT(*) FROM [User] WHERE RoleID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, roleId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public List<User> getUserbyUserId(int userid) {
        List<User> list = new ArrayList<>();
        try {
            String sql = "select * from [User] where [User].UserID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, userid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUserID(rs.getInt(1));
                user.setEmail(rs.getString(2));
                user.setPhone(rs.getString(3));
                user.setFullName(rs.getString(4));
                user.setImage(rs.getString(5));
                user.setDob(rs.getDate(6));
                user.setAddress(rs.getString(7));
                user.setGmailID(rs.getString(8));
                user.setRoleID(rs.getInt(9));
                user.setCodeVerify(rs.getString(10));
                user.setStatusUserId(rs.getInt(11));
                user.setUsername(rs.getString(12));
                user.setPassword(rs.getString(13));
                list.add(user);
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void updateUserImage(int userId, String imagePath) {
        try {
            String sql = "UPDATE [User] SET Image = ? WHERE UserID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, imagePath);
            stm.setInt(2, userId);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        
        System.out.println(new UserDBContext().getUserbyUserId(2));
    }

     public void addUser(String email,String username,String password) {
        try {
            String sql = "INSERT INTO [dbo].[User] (Email, Username, Password,RoleID,statusUserId) VALUES (?,?,?,3,2)";
            PreparedStatement stm = connection.prepareStatement(sql);
             stm.setString(1, email);
            stm.setString(2, username);
            stm.setString(3, password);
            
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

     public void updateUserByEmail(String email, String newpass) {
        try {
            String sql = "UPDATE [User] SET Password = ? WHERE Email = ?;";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, newpass);
            stm.setString(2, email);
            
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
