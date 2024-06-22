/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.util.LinkedHashMap;
import java.util.List;
import model.Result;

/**
 *
 * @author Admin
 */
public class ResultDAO extends GenericDAO<Result> {

    @Override
    public List<Result> findAll() {
        return queryGenericDAO(Result.class);
    }

    @Override
    public int insert(Result t) {
        String sql = "INSERT INTO [dbo].[Result]\n"
                + "           ([UserId]\n"
                + "           ,[QuizId]\n"
                + "           ,[Score]\n"
                + "           ,[CorrectAnswers]\n"
                + "           ,[TotalQuestions]\n"
                + "           ,[attemptCount])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("userid", t.getUserId());
        parameterMap.put("QuizId", t.getQuizId());
        parameterMap.put("Score", t.getScore());
        parameterMap.put("CorrectAnswers", t.getCorrectAnswers());
        parameterMap.put("TotalQuestions", t.getTotalQuestions());
        parameterMap.put("attemptCount", t.getAttemptCount());
        return insertGenericDAO(sql, parameterMap);
    }

    public int numberOfTest(Result result) {
        String sql = "SELECT COUNT(*)\n"
                + "FROM dbo.Result \n"
                + "WHERE QuizId = ? AND UserId = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("Quizid", result.getQuizId());
        parameterMap.put("UserId", result.getUserId());
        return findTotalRecordGenericDAO(Result.class, sql, parameterMap);
    }

    public int CheckCountQuizHref(int quizid) {
        String sql = "SELECT COUNT(*) FROM dbo.Result\n"
                + "WHERE quizid = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("quizid", quizid);
        return findTotalRecordGenericDAO(Result.class, sql, parameterMap);
    }

    public static void main(String[] args) {
        Result r = new Result();
        r.setQuizId(2);
        r.setUserId(4);
        System.out.println(new ResultDAO().CheckCountQuizHref(2));
    }
}
