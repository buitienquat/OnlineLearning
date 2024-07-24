package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Course;
import model.Lesson;

public class CourseDB extends DBContext {

    public CourseDB() {
        // Gọi phương thức getConnection để thiết lập kết nối
        this.connection = getConnection();
    }

    public List<Course> getAllCourse() {
        List<Course> list = new ArrayList<>();
        try {
            String sql = "SELECT c.*, u.FullName FROM Course c INNER JOIN [User] u ON c.UserId_User = u.userID";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Course course = new Course();
                course.setCouseraID(rs.getInt(1));
                course.setName(rs.getString(2));
                course.setImage(rs.getString(3));
                course.setDescription(rs.getString(4));
                course.setStatus(rs.getInt(5));
                course.setCategory_categoryID(rs.getInt(6));
                course.setFeestatus(rs.getInt(7));
                course.setIntroduce(rs.getString(8));
                course.setOriginalPrice(rs.getInt(9));
                course.setUserId_User(rs.getInt(10));
                list.add(course);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDB.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace(); // In ra lỗi chi tiết
        }
        return list;
    }

    public void updateCourse(int courseid, int status) {
        try {
            String sql = "UPDATE Course SET Status=? WHERE CouseraID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, status);
            stm.setInt(2, courseid);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CourseDB.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace(); // In ra lỗi chi tiết
        }
    }

    public List<Course> getCoursebyStatuspage(int status) {
        List<Course> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Course WHERE Course.status = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, status);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Course course = new Course();
                course.setCouseraID(rs.getInt(1));
                course.setName(rs.getString(2));
                course.setImage(rs.getString(3));
                course.setDescription(rs.getString(4));
                course.setStatus(rs.getInt(5));
                course.setCategory_categoryID(rs.getInt(6));
                course.setFeestatus(rs.getInt(7));
                course.setIntroduce(rs.getString(8));
                course.setOriginalPrice(rs.getInt(9));
                course.setUserId_User(rs.getInt(10));
                list.add(course);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDB.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace(); // In ra lỗi chi tiết
        }
        return list;
    }
    
    

    public List<Lesson> getLessonbyCourseID(int courseid) {
        List<Lesson> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Lesson WHERE Lesson.Course_courseID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, courseid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Lesson lesson = new Lesson();
                lesson.setLessonID(rs.getInt(1));
                lesson.setTitle(rs.getString(2));
                lesson.setCourse_courseID(rs.getInt(3));
                lesson.setVideo(rs.getString(4));
                lesson.setNote(rs.getString(5));
                lesson.setTime(rs.getDate(6));
                lesson.setNumberLesson(rs.getInt(7));
                lesson.setQuizId_Quiz(rs.getInt(8));
                list.add(lesson);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDB.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace(); // In ra lỗi chi tiết
        }
        return list;
    }

//    public static void main(String[] args) {
//        CourseDB dao = new CourseDB();
//        String title = "Introduction to Java";
//        String courseID = "1"; // Giả sử courseID là 1
//        String video = "https://example.com/video.mp4";
//        String note = "This is a sample note for the lesson.";
//        String numberLesson = "1";
//        dao.insertLesson(title, 1, video, note, numberLesson);
//        System.out.println("Lesson inserted successfully!");
//    }
    


}
