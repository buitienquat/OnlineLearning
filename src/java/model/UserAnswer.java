/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class UserAnswer {
    private int UserAnswerID;
    private int UserId;
    private int QuizId;
    private int QuestionId;
    private int AnswerId;

    public UserAnswer() {
    }

    public UserAnswer(int UserAnswerID, int UserId, int QuizId, int QuestionId, int AnswerId) {
        this.UserAnswerID = UserAnswerID;
        this.UserId = UserId;
        this.QuizId = QuizId;
        this.QuestionId = QuestionId;
        this.AnswerId = AnswerId;
    }

    public int getUserAnswerID() {
        return UserAnswerID;
    }

    public void setUserAnswerID(int UserAnswerID) {
        this.UserAnswerID = UserAnswerID;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int UserId) {
        this.UserId = UserId;
    }

    public int getQuizId() {
        return QuizId;
    }

    public void setQuizId(int QuizId) {
        this.QuizId = QuizId;
    }

    public int getQuestionId() {
        return QuestionId;
    }

    public void setQuestionId(int QuestionId) {
        this.QuestionId = QuestionId;
    }

    public int getAnswerId() {
        return AnswerId;
    }

    public void setAnswerId(int AnswerId) {
        this.AnswerId = AnswerId;
    }

    @Override
    public String toString() {
        return "UserAnswer{" + "UserAnswerID=" + UserAnswerID + ", UserId=" + UserId + ", QuizId=" + QuizId + ", QuestionId=" + QuestionId + ", AnswerId=" + AnswerId + '}';
    }
    
}
