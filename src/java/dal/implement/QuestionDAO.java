/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import controller.constant.commonConstant;
import dal.DBContext;
import dal.GenericDAO;
import java.util.LinkedHashMap;
import java.util.List;
import model.Page;
import model.Question;

/**
 *
 * @author Admin
 */
public class QuestionDAO extends GenericDAO<Question> {

    @Override
    public List<Question> findAll() {
        return queryGenericDAO(Question.class);
    }

    @Override
    public int insert(Question t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

//    public List<Question> getQuestionByQuizId(Question question) {
//        String sql = "SELECT * FROM dbo.Question \n"
//                + "WHERE QuizId_Quiz = ?";
//        parameterMap = new LinkedHashMap<>();
//        parameterMap.put("quizid", question.getQuizId_Quiz());
//        return queryGenericDAO(Question.class, sql, parameterMap);
//    }
    public int findTotalRecordQuestion(Question question) {
        String sql = "SELECT COUNT(*) FROM dbo.Question \n"
                + "WHERE QuizId_Quiz = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("quizid", question.getQuizId_Quiz());
        return findTotalRecordGenericDAO(Question.class, sql, parameterMap);
    }

    public List<Question> getQuestionByQuizId(Question question, int page) {
        String sql = "SELECT *\n"
                + "	FROM dbo.Question\n"
                + "	WHERE QuizId_Quiz = ?\n"
                + "	ORDER BY QuestionId\n"
                + "	OFFSET ? ROWS        -- số sản phẩm bắt đầu\n"
                + "	FETCH NEXT ? ROWS ONLY  ";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("quizid", question.getQuizId_Quiz());
        parameterMap.put("offset", (page - 1) * commonConstant.RECORD_PER_PAGE_QUIZ);
        parameterMap.put("fetch", commonConstant.RECORD_PER_PAGE_QUIZ);
        return queryGenericDAO(Question.class, sql, parameterMap);

    }

    public static void main(String[] args) {
        Question question = new Question();
        question.setQuizId_Quiz(2);
        System.out.println(new QuestionDAO().getQuestionByQuizId(question, 1));
    }
}
