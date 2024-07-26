/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author Admin
 */
public class UserDAO extends GenericDAO<User> {

    @Override
    public List<User> findAll() {
        String sql = "SELECT * FROM dbo.[User] ";
        return queryGenericDAO(User.class, sql, parameterMap);
    }

    @Override
    public int insert(User t) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([Email]\n"
                + "           ,[Phone]\n"
                + "           ,[FullName]\n"
                + "           ,[Image]\n"
                + "           ,[Dob]\n"
                + "           ,[Address]\n"
                + "           ,[GmailID]\n"
                + "           ,[RoleID]\n"
                + "           ,[CodeVerify]\n"
                + "           ,[statusUserId]\n"
                + "           ,[Username]\n"
                + "           ,[Password])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,3\n"
                + "           ,?\n"
                + "           ,2\n"
                + "           ,?\n"
                + "           ,?)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("Email", t.getEmail());
        parameterMap.put("Phone", t.getPhone());
        parameterMap.put("FullName", t.getFullName());
        parameterMap.put("Image", t.getImage());
        parameterMap.put("Dob", t.getDob());
        parameterMap.put("Address", t.getAddress());
        parameterMap.put("GmailID", t.getGmailID());
        parameterMap.put("CodeVerify", t.getCodeVerify());
        parameterMap.put("Username", t.getUsername());
        parameterMap.put("Password", t.getPassword());
        return insertGenericDAO(sql, parameterMap);
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

        }
        return count;
    }

    public User findByUsernameAndPass(User user) {
        String sql = "SELECT * \n"
                + "FROM dbo.[User]\n"
                + "WHERE Username = ?\n"
                + "AND [Password] = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("user", user.getUsername());
        parameterMap.put("pass", user.getPassword());
        List<User> list = queryGenericDAO(User.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);
    }

    public boolean checkUsernameExist(User user) {
        String sql = "SELECT * \n"
                + "FROM dbo.[User]\n"
                + "WHERE Username = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("username", user.getUsername());
        return !queryGenericDAO(User.class, sql, parameterMap).isEmpty();
    }

    public static void main(String[] args) {
        User u = new User();
        u.setUsername("hi");
        u.setPassword("1");
        u.setEmail("thienly@gmail.com");
        System.out.println(new UserDAO().insert(u));
    }

    public boolean checkEmailExist(User user) {
        String sql = "SELECT * \n"
                + "FROM dbo.[User]\n"
                + "WHERE Email = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("email", user.getEmail());
        return !queryGenericDAO(User.class, sql, parameterMap).isEmpty();
    }

    public boolean checkGmailIDExist(User user) {
        String sql = "SELECT * \n"
                + "FROM dbo.[User]\n"
                + "WHERE GmailID = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("GmailID", user.getGmailID());
        return !queryGenericDAO(User.class, sql, parameterMap).isEmpty();
    }

    public void updateIformationDataUser(User acc) {

        String sql = "UPDATE [dbo].[User] "
                + "SET [FullName] = ?, "
                + "[Image] = ?, "
                + "[GmailID] = ? "
                + "WHERE Email = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("FullName", acc.getFullName());
        parameterMap.put("Image", acc.getImage());
        parameterMap.put("GmailID", acc.getGmailID());
        parameterMap.put("Email", acc.getEmail());
        updateGenericDAO(sql, parameterMap);
    }

}
