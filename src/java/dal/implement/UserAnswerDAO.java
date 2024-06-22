/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.util.LinkedHashMap;
import java.util.List;
import model.UserAnswer;

/**
 *
 * @author Admin
 */
public class UserAnswerDAO extends GenericDAO<UserAnswer> {

    @Override
    public List<UserAnswer> findAll() {
        return queryGenericDAO(UserAnswer.class);
    }

    @Override
    public int insert(UserAnswer t) {
        String sql = "INSERT INTO [dbo].[UserAnswer]\n"
                + "           ([UserId]\n"
                + "           ,[QuizId]\n"
                + "           ,[QuestionId]\n"
                + "           ,[AnswerId])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("UserId", t.getUserId());
        parameterMap.put("QuizId", t.getQuizId());
        parameterMap.put("QuestionId", t.getQuestionId());
        parameterMap.put("AnswerId", t.getAnswerId());
        return insertGenericDAO(sql, parameterMap);
    }

    public void delete(UserAnswer userAnswer) {
        String sql = "DELETE FROM [dbo].[UserAnswer]\n"
                + "      WHERE UserId = ? AND QuizId = ? ";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("UserId", userAnswer.getUserId());
        parameterMap.put("QuizId", userAnswer.getQuizId());
        deleteGenericDAO(sql, parameterMap);
    }

    public List<UserAnswer> getUserAnswersByQuizAndUser(UserAnswer userAnswer) {
        String sql = "SELECT * FROM UserAnswer\n"
                + "WHERE UserId = ? AND QuizId = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("UserId", userAnswer.getUserId());
        parameterMap.put("quizid", userAnswer.getQuizId());
        return queryGenericDAO(UserAnswer.class, sql, parameterMap);
    }

    public static void main(String[] args) {
        UserAnswer userAnswer = new UserAnswer();
        userAnswer.setUserId(4);
        userAnswer.setQuizId(2);
        System.out.println(new UserAnswerDAO().getUserAnswersByQuizAndUser(userAnswer));
//        System.out.println("sau khi delete");
//        UserAnswerDAO dao = new UserAnswerDAO();
//        UserAnswer userAnswer = new UserAnswer();
//        userAnswer.setUserId(4);
//        userAnswer.setQuizId(2);
//        dao.delete(userAnswer);
//        for (UserAnswer us : new UserAnswerDAO().findAll()) {
//            System.out.println(us);
//        }
    }
}
