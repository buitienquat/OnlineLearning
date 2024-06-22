/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Result {

    private int ResultId;
    private int UserId;
    private int QuizId;
    private float Score;
    private int CorrectAnswers;
    private int TotalQuestions;
    private int attemptCount;
    public Result() {
    }

    public Result(int ResultId, int UserId, int QuizId, float Score, int CorrectAnswers, int TotalQuestions, int attemptCount) {
        this.ResultId = ResultId;
        this.UserId = UserId;
        this.QuizId = QuizId;
        this.Score = Score;
        this.CorrectAnswers = CorrectAnswers;
        this.TotalQuestions = TotalQuestions;
        this.attemptCount = attemptCount;
    }

    public int getResultId() {
        return ResultId;
    }

    public void setResultId(int ResultId) {
        this.ResultId = ResultId;
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

    public float getScore() {
        return Score;
    }

    public void setScore(float Score) {
        this.Score = Score;
    }

    public int getCorrectAnswers() {
        return CorrectAnswers;
    }

    public void setCorrectAnswers(int CorrectAnswers) {
        this.CorrectAnswers = CorrectAnswers;
    }

    public int getTotalQuestions() {
        return TotalQuestions;
    }

    public void setTotalQuestions(int TotalQuestions) {
        this.TotalQuestions = TotalQuestions;
    }

    public int getAttemptCount() {
        return attemptCount;
    }

    public void setAttemptCount(int attemptCount) {
        this.attemptCount = attemptCount;
    }

    @Override
    public String toString() {
        return "Result{" + "ResultId=" + ResultId + ", UserId=" + UserId + ", QuizId=" + QuizId + ", Score=" + Score + ", CorrectAnswers=" + CorrectAnswers + ", TotalQuestions=" + TotalQuestions + ", attemptCount=" + attemptCount + '}';
    }

    
}
