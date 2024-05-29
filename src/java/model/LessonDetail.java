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
public class LessonDetail {
    private int LessonDetailID;
    private String Title;
    private String Video;
    private String Note;
    private Date Time;
    private int Lesson_LessonID;

    public LessonDetail() {
    }

    public LessonDetail(int LessonDetailID, String Title, String Video, String Note, Date Time, int Lesson_LessonID) {
        this.LessonDetailID = LessonDetailID;
        this.Title = Title;
        this.Video = Video;
        this.Note = Note;
        this.Time = Time;
        this.Lesson_LessonID = Lesson_LessonID;
    }

    public int getLessonDetailID() {
        return LessonDetailID;
    }

    public void setLessonDetailID(int LessonDetailID) {
        this.LessonDetailID = LessonDetailID;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
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

    public int getLesson_LessonID() {
        return Lesson_LessonID;
    }

    public void setLesson_LessonID(int Lesson_LessonID) {
        this.Lesson_LessonID = Lesson_LessonID;
    }

    @Override
    public String toString() {
        return "LessonDetail{" + "LessonDetailID=" + LessonDetailID + ", Title=" + Title + ", Video=" + Video + ", Note=" + Note + ", Time=" + Time + ", Lesson_LessonID=" + Lesson_LessonID + '}';
    }
    
}
