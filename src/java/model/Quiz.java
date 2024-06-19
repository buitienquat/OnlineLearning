/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Quiz {
    private int QuizId;
    private String Title;

    public Quiz(int QuizId, String Title) {
        this.QuizId = QuizId;
        this.Title = Title;
    }

    public Quiz() {
    }

    public int getQuizId() {
        return QuizId;
    }

    public void setQuizId(int QuizId) {
        this.QuizId = QuizId;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    @Override
    public String toString() {
        return "Quiz{" + "QuizId=" + QuizId + ", Title=" + Title + '}';
    }
    
}
