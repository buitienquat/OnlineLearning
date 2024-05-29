/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.util.LinkedHashMap;
import java.util.List;
import model.Lesson;

/**
 *
 * @author Admin
 */
public class LessonDAO extends GenericDAO<Lesson> {

    @Override
    public List<Lesson> findAll() {
        return queryGenericDAO(Lesson.class);
    }

    @Override
    public int insert(Lesson t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public List<Lesson> findLessonByCourseId(Lesson lesson) {
        String sql = "SELECT * FROM dbo.Lesson\n"
                + "WHERE Course_courseID = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("Course_courseID", lesson.getCourse_courseID());
        return queryGenericDAO(Lesson.class, sql, parameterMap);
    }

    public static void main(String[] args) {
        Lesson lesson = new Lesson();
        lesson.setCourse_courseID(1);
        System.out.println(new LessonDAO().findLessonByCourseId(lesson));
    }
}
