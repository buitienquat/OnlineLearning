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

    public List<Answer> getAnswerQuestionId(Answer answer) {
        String sql = "SELECT * FROM dbo.Answer\n"
                + "WHERE QuestionId_Question = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("questionid", answer.getQuestionId_Question());
        return queryGenericDAO(Answer.class, sql, parameterMap);
    }

    public List<Answer> getAnswersByQuestionId(int questionId) {
        String sql = "SELECT * FROM dbo.Answer\n"
                + "WHERE QuestionId_Question = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("question", questionId);
        return queryGenericDAO(Answer.class, sql, parameterMap);
    }

    public Answer getCorrectAnswerByQuestionId(Answer answer) {
        String sql = "SELECT * FROM dbo.Answer\n"
                + "WHERE QuestionId_Question = ? AND IsCorrect = 1 ";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("questionid", answer.getQuestionId_Question());
        List<Answer> list = queryGenericDAO(Answer.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);
    }

    public Answer getCorrectAnswerQuestionId(int questionId) {
        String sql = "SELECT * FROM dbo.Answer\n"
                + "WHERE QuestionId_Question = ? AND IsCorrect = 1 ";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("questionid", questionId);
        List<Answer> list = queryGenericDAO(Answer.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);
    }

    public Answer getAnswerById(int answerId) {
        String sql = "SELECT * FROM dbo.Answer\n"
                + "WHERE AnswerID = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("answerid", answerId);
        List<Answer> list = queryGenericDAO(Answer.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);
    }

    public static void main(String[] args) {
        Answer answer = new Answer();
        answer.setQuestionId_Question(1);
        System.out.println(new AnswerDAO().getAnswerById(1));
    }

}
