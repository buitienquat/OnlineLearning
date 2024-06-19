/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Question {

    private int QuestionId;
    private String QuestionText;
    private int QuizId_Quiz;

    public Question() {
    }

    public Question(int QuestionId, String QuestionText, int QuizId_Quiz) {
        this.QuestionId = QuestionId;
        this.QuestionText = QuestionText;
        this.QuizId_Quiz = QuizId_Quiz;
    }

    public int getQuestionId() {
        return QuestionId;
    }

    public void setQuestionId(int QuestionId) {
        this.QuestionId = QuestionId;
    }

    public String getQuestionText() {
        return QuestionText;
    }

    public void setQuestionText(String QuestionText) {
        this.QuestionText = QuestionText;
    }

    public int getQuizId_Quiz() {
        return QuizId_Quiz;
    }

    public void setQuizId_Quiz(int QuizId_Quiz) {
        this.QuizId_Quiz = QuizId_Quiz;
    }

    @Override
    public String toString() {
        return "Question{" + "QuestionId=" + QuestionId + ", QuestionText=" + QuestionText + ", QuizId_Quiz=" + QuizId_Quiz + '}';
    }
    
}
