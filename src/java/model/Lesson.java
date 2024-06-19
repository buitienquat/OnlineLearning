/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.util.Date;
/**
 *
 * @author Admin
 */
public class Lesson {

    private int LessonID;
    private String Title;
    private  int Course_courseID;
    private String Video;
    private String Note;
    private Date Time;
    private int NumberLesson;
    private int QuizId_Quiz;
    public Lesson() {
    }

    public Lesson(int LessonID, String Title, int Course_courseID, String Video, String Note, Date Time, int NumberLesson, int QuizId_Quiz) {
        this.LessonID = LessonID;
        this.Title = Title;
        this.Course_courseID = Course_courseID;
        this.Video = Video;
        this.Note = Note;
        this.Time = Time;
        this.NumberLesson = NumberLesson;
        this.QuizId_Quiz = QuizId_Quiz;
    }

    public int getLessonID() {
        return LessonID;
    }

    public void setLessonID(int LessonID) {
        this.LessonID = LessonID;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public int getCourse_courseID() {
        return Course_courseID;
    }

    public void setCourse_courseID(int Course_courseID) {
        this.Course_courseID = Course_courseID;
    }

    public String getVideo() {
        return Video;
    }

    public void setVideo(String Video) {
        this.Video = Video;
    }

    public String getNote() {
        return Note;
    }

    public void setNote(String Note) {
        this.Note = Note;
    }

    public Date getTime() {
        return Time;
    }

    public void setTime(Date Time) {
        this.Time = Time;
    }

    public int getNumberLesson() {
        return NumberLesson;
    }

    public void setNumberLesson(int NumberLesson) {
        this.NumberLesson = NumberLesson;
    }

    public int getQuizId_Quiz() {
        return QuizId_Quiz;
    }

    public void setQuizId_Quiz(int QuizId_Quiz) {
        this.QuizId_Quiz = QuizId_Quiz;
    }

    @Override
    public String toString() {
        return "Lesson{" + "LessonID=" + LessonID + ", Title=" + Title + ", Course_courseID=" + Course_courseID + ", Video=" + Video + ", Note=" + Note + ", Time=" + Time + ", NumberLesson=" + NumberLesson + ", QuizId_Quiz=" + QuizId_Quiz + '}';
    }

    

}
