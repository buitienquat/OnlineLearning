/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.util.LinkedHashMap;
import java.util.List;
import model.Google;

/**
 *
 * @author Admin
 */
public class GoogleDAO extends GenericDAO<Google> {

    @Override
    public List<Google> findAll() {
        return queryGenericDAO(Google.class);
    }

    @Override
    public int insert(Google t) {
        String sql = "INSERT INTO [dbo].[Google]\n"
                + "           ([email]\n"
                + "           ,[name]\n"
                + "           ,[picture]\n"
                + "           ,[gmailId])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("email", t.getEmail());
        parameterMap.put("name", t.getName());
        parameterMap.put("picture", t.getPicture());
        parameterMap.put("gmailId", t.getGmailId());
        return insertGenericDAO(sql, parameterMap);
    }

    public static void main(String[] args) {
        System.out.println(new GoogleDAO().findAll());
    }
}
