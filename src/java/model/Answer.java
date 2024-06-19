/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Answer {
    private int AnswerID;
    private int QuestionId_Question;
    private String AnswerText;
    private boolean IsCorrect;

    public Answer() {
    }

    public Answer(int AnswerID, int QuestionId_Question, String AnswerText, boolean IsCorrect) {
        this.AnswerID = AnswerID;
        this.QuestionId_Question = QuestionId_Question;
        this.AnswerText = AnswerText;
        this.IsCorrect = IsCorrect;
    }

    public int getAnswerID() {
        return AnswerID;
    }

    public void setAnswerID(int AnswerID) {
        this.AnswerID = AnswerID;
    }

    public int getQuestionId_Question() {
        return QuestionId_Question;
    }

    public void setQuestionId_Question(int QuestionId_Question) {
        this.QuestionId_Question = QuestionId_Question;
    }

    public String getAnswerText() {
        return AnswerText;
    }

    public void setAnswerText(String AnswerText) {
        this.AnswerText = AnswerText;
    }

    public boolean isIsCorrect() {
        return IsCorrect;
    }

    public void setIsCorrect(boolean IsCorrect) {
        this.IsCorrect = IsCorrect;
    }

    @Override
    public String toString() {
        return "Answer{" + "AnswerID=" + AnswerID + ", QuestionId_Question=" + QuestionId_Question + ", AnswerText=" + AnswerText + ", IsCorrect=" + IsCorrect + '}';
    }

    
}
