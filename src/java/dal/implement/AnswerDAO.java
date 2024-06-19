/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.awt.BorderLayout;
import java.util.LinkedHashMap;
import java.util.List;
import model.Answer;

/**
 *
 * @author Admin
 */
public class AnswerDAO extends GenericDAO<Answer> {

    @Override
    public List<Answer> findAll() {
        return queryGenericDAO(Answer.class);
    }

    @Override
    public int insert(Answer t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public static void main(String[] args) {
        System.out.println(new AnswerDAO().findAll());
    }

    public List<Answer> getAnswerQuestionId(Answer answer) {
        String sql = "SELECT * FROM dbo.Answer\n"
                + "WHERE QuestionId_Question = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("questionid", answer.getQuestionId_Question());
        return queryGenericDAO(Answer.class, sql, parameterMap);
    }
}
