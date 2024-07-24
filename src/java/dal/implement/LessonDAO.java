/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.DBContext;
import dal.GenericDAO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.List;
import model.Lesson;
import java.sql.PreparedStatement;

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

//    public static void main(String[] args) {
//        Lesson lesson = new Lesson();
//        lesson.setCourse_courseID(1);
//        System.out.println(new LessonDAO().findAll());
//    }
    
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void insertLesson(String title, int courseID, String video, String note, String numberLesson) {
    String query = "INSERT INTO lesson (Title, Course_courseID, Video, Note,Time, NumberLesson) VALUES (?, ?, ?, ?, GETDATE(), ?)";
    try {
        conn = new DBContext().getConnection(); // Lấy kết nối từ DBContext
        ps = conn.prepareStatement(query);
        ps.setString(1, title);
        ps.setInt(2, courseID);
        ps.setString(3, video);
        ps.setString(4, note);
        
        ps.setString(5, numberLesson);
       
        ps.executeUpdate(); // Thực hiện câu lệnh chèn
    } catch (Exception e) {
        e.printStackTrace(); // In ra lỗi nếu có
        // Xử lý ngoại lệ một cách phù hợp
    } finally {
        try {
            if (ps != null) ps.close(); // Đóng PreparedStatement
            if (conn != null) conn.close(); // Đóng kết nối
        } catch (SQLException e) {
            e.printStackTrace(); // In ra lỗi nếu có
        }
    }
    }
    
    public void delLesson(int id) {
        String sql = "DELETE FROM Lesson WHERE LessonID=?"; 

        try {
        conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
        } catch (Exception e) {
        e.printStackTrace(); // In ra lỗi nếu có
        // Xử lý ngoại lệ một cách phù hợp
    } finally {
        try {
            if (ps != null) ps.close(); // Đóng PreparedStatement
            if (conn != null) conn.close(); // Đóng kết nối
        } catch (SQLException e) {
            e.printStackTrace(); // In ra lỗi nếu có
        }
    }
    }
    
    public static void main(String[] args) {
        LessonDAO dao = new LessonDAO();
        dao.updateLesson("check", "https://www.youtube.com/watch?v=4vWF5IBeQdY", "", "1", 200, 7);
        System.out.println("done");
    }
    
    public void updateLesson(String title, String video, String note, String number, int lessonId, int courseId) {
        String query = "UPDATE lesson SET title=?, video=?, note=?, NumberLesson=?,Course_courseID=?,Time=GETDATE()  WHERE LessonID=?";
        try {
            conn = new DBContext().getConnection(); // Lấy kết nối từ DBContext
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, video);
            ps.setString(3, note);
            ps.setString(4, number);
            ps.setInt(5, courseId);
            ps.setInt(6, lessonId);
            ps.executeUpdate(); // Thực hiện câu lệnh cập nhật
        } catch (Exception e) {
            e.printStackTrace(); // In ra lỗi nếu có
            // Xử lý ngoại lệ một cách phù hợp
        } finally {
            try {
                if (ps != null) {
                    ps.close(); // Đóng PreparedStatement
                }
                if (conn != null) {
                    conn.close(); // Đóng kết nối
                }
            } catch (SQLException e) {
                e.printStackTrace(); // In ra lỗi nếu có
            }
        }
    }
}
