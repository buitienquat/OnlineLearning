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

//    public Lesson autoFirstCourse(Lesson lesson) {
//        String sql = "SELECT * FROM dbo.Lesson\n"
//                + "WHERE Course_courseID = ? AND NumberLesson = ? AND QuizId_Quiz = ?";
//        parameterMap = new LinkedHashMap<>();
//        parameterMap.put("id", lesson.getCourse_courseID());
//        parameterMap.put("numberlesson", lesson.getNumberLesson());
//        parameterMap.put("quizid", lesson.getQuizId_Quiz());
//        List<Lesson> list = queryGenericDAO(Lesson.class, sql, parameterMap);
//        return list.isEmpty() ? null : list.get(0);
//    }

public Lesson autoFirstCourse(Lesson lesson) {
        String sql = "SELECT * FROM dbo.Lesson\n"
                + "WHERE Course_courseID = ? AND NumberLesson = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", lesson.getCourse_courseID());
        parameterMap.put("numberlesson", lesson.getNumberLesson());

        List<Lesson> list = queryGenericDAO(Lesson.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);
    }
    public int findTotalRecord(Lesson lesson) {
        String sql = "SELECT COUNT(*) FROM dbo.Lesson\n"
                + "WHERE Course_courseID = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("record", lesson.getCourse_courseID());
        return findTotalRecordGenericDAO(Lesson.class, sql, parameterMap);
    }

    public static void main(String[] args) {
        Lesson lesson = new Lesson();
        lesson.setCourse_courseID(1);
        System.out.println(new LessonDAO().findAll());
    }
}
