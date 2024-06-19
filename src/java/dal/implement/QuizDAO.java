/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.util.LinkedHashMap;
import java.util.List;
import model.Page;
import model.Quiz;

/**
 *
 * @author Admin
 */
public class QuizDAO extends GenericDAO<Quiz> {

    @Override
    public List<Quiz> findAll() {
        return queryGenericDAO(Quiz.class);
    }

    @Override
    public int insert(Quiz t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Quiz findQuizId(Quiz quiz) {
        String sql = "SELECT * FROM Quiz\n"
                + "WHERE QuizId = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("quizid", quiz.getQuizId());
        List<Quiz> list = queryGenericDAO(Quiz.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);

    }

    public static void main(String[] args) {
        Quiz quiz = new Quiz();
        quiz.setQuizId(2);
        
    }



}
