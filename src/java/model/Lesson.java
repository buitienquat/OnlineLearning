/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Lesson {

    private int LessonID;
    private String Name;
    private  int Course_courseID;

    public Lesson() {
    }

    public Lesson(int LessonID, String Name, int Course_courseID) {
        this.LessonID = LessonID;
        this.Name = Name;
        this.Course_courseID = Course_courseID;
    }

    public int getLessonID() {
        return LessonID;
    }

    public void setLessonID(int LessonID) {
        this.LessonID = LessonID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getCourse_courseID() {
        return Course_courseID;
    }

    public void setCourse_courseID(int Course_courseID) {
        this.Course_courseID = Course_courseID;
    }

    @Override
    public String toString() {
        return "Lesson{" + "LessonID=" + LessonID + ", Name=" + Name + ", Course_courseID=" + Course_courseID + '}';
    }
    
    
}
