/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import controller.constant.commonConstant;
import dal.DBContext;
import dal.GenericDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import model.Course;
import org.apache.catalina.util.ParameterMap;

/**
 *
 * @author Admin
 */
public class CourseDAO extends GenericDAO<Course> {

    @Override
    public List<Course> findAll() {
        return queryGenericDAO(Course.class);
    }

    @Override
    public int insert(Course t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public List<Course> getAllCourse() {
        List<Course> list = new ArrayList<>();
        try {
            String sql = "SELECT c.*, u.FullName "
                    + "FROM Course c "
                    + "INNER JOIN [User] u ON c.UserId_User = u.userID;";
            java.sql.PreparedStatement stm = connection.prepareStatement(sql);
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
        } catch (Exception ex) {

        }
        return list;
    }

    public List<Course> findCourseByName(String searchName, int page) {
        String sql = "SELECT *\n"
                + "FROM dbo.Course\n"
                + "WHERE [Name] LIKE ? AND [Status] = 1\n"
                + "ORDER BY CouseraID\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT ? ROWS ONLY";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + searchName + "%");
        parameterMap.put("offset", (page - 1) * commonConstant.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConstant.RECORD_PER_PAGE);
        return queryGenericDAO(Course.class, sql, parameterMap) == null
                ? findAll()
                : queryGenericDAO(Course.class, sql, parameterMap);
    }

    public List<Course> findCourseByCategory(int cateId, int page) {
        String sql = "SELECT *\n"
                + "FROM dbo.Course\n"
                + "WHERE Category_categoryID = ? AND Feestatus > 0 AND [Status] = 1\n"
                + "ORDER BY CouseraID\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT ? ROWS ONLY";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("cateId", cateId);
        parameterMap.put("offset", (page - 1) * commonConstant.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConstant.RECORD_PER_PAGE);
        return queryGenericDAO(Course.class, sql, parameterMap);
    }

    public List<Course> findCourseByCategoryAll(int cateIdAll, int page) {
        String sql = "SELECT *\n"
                + "FROM dbo.Course\n"
                + "WHERE Category_categoryID = ? AND [Status] = 1\n"
                + "ORDER BY CouseraID\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT ? ROWS ONLY";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("cateId", cateIdAll);
        parameterMap.put("offset", (page - 1) * commonConstant.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConstant.RECORD_PER_PAGE);
        return queryGenericDAO(Course.class, sql, parameterMap);
    }

    public Course findCourseId(Course course) {
        String sql = "SELECT * FROM dbo.Course\n"
                + "WHERE CouseraID = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("courseID", course.getCouseraID());
//        return queryGenericDAO(Course.class, sql, parameterMap);
        // vì chỉ tìm về 1 khoá học mà queryGenericDAO lại trả về 1 list =>
        List<Course> list = queryGenericDAO(Course.class, sql, parameterMap);
        // nếu như hàm rỗng(empty) => ko có khoá học nào => trả về null
        //          ko rỗng         =>  có sản phẩm => nằm ở vị trí đầu tiên => lấy ở vị trí 0
        return list.isEmpty() ? null : list.get(0);
    }

    public int findTotalRecordByName(String searchName) {
        String sql = "SELECT COUNT(*) "
                + "FROM dbo.Course\n"
                + "WHERE [Name] LIKE ? AND [Status] = 1";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + searchName + "%");
        return findTotalRecordGenericDAO(Course.class, sql, parameterMap);
    }

    public int findTotalRecordByCategory(String categoryId) {
        String sql = "SELECT COUNT(*) \n"
                + "FROM dbo.Course\n"
                + "WHERE Category_categoryID = ? AND Feestatus > 0  AND [Status] = 1";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryId", categoryId);
        return findTotalRecordGenericDAO(Course.class, sql, parameterMap);
    }

    public int findTotalRecordByCategoryAll(String categoryIdAll) {
        String sql = "SELECT COUNT(*) \n"
                + "FROM dbo.Course\n"
                + "WHERE Category_categoryID = ? AND [Status] = 1";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryId", categoryIdAll);
        return findTotalRecordGenericDAO(Course.class, sql, parameterMap);
    }

    public int findTotalRecord() {
        String sql = "SELECT COUNT(*) FROM dbo.Course\n"
                + "WHERE  [Status] = 1";
        parameterMap = new LinkedHashMap<>();
        return findTotalRecordGenericDAO(Course.class, sql, parameterMap);
    }

    public List<Course> findByPage(int page) {
        String sql = "SELECT *\n"
                + "FROM dbo.Course WHERE [Status] = 1\n"
                + "ORDER BY CouseraID\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT ? ROWS ONLY";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("offset", (page - 1) * commonConstant.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConstant.RECORD_PER_PAGE);
        return queryGenericDAO(Course.class, sql, parameterMap);
    }

    public int findTotalRecordByCategoryFree(String categoryIdFree) {
        String sql = "SELECT COUNT(*) \n"
                + "FROM dbo.Course\n"
                + "WHERE Category_categoryID = ? AND Feestatus = 0 AND [Status] = 1";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryidfree", categoryIdFree);
        return findTotalRecordGenericDAO(Course.class, sql, parameterMap);
    }

    public List<Course> findCourseByCategoryFree(int cateIdFree, int page) {
        String sql = "SELECT * \n"
                + "FROM dbo.Course\n"
                + "WHERE Category_categoryID = ? AND Feestatus = 0  AND [Status] = 1\n"
                + "ORDER BY CouseraID\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT ? ROWS ONLY";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("cateId", cateIdFree);
        parameterMap.put("offset", (page - 1) * commonConstant.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConstant.RECORD_PER_PAGE);
        return queryGenericDAO(Course.class, sql, parameterMap);
    }

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void updateCourse(String title, String image, String description, String status, String cate, String fee, String intro, String price, int courseId) {
        String query = "UPDATE course SET name=?, image=?, description=?, status=?,Category_categoryID=?,FeeStatus=?,Introduce=?, OriginalPrice=?   WHERE CouseraID=?";
        try {
            conn = new DBContext().getConnection(); // Lấy kết nối từ DBContext
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, image);
            ps.setString(3, description);
            ps.setString(4, status);
            ps.setString(5, cate);
            ps.setString(6, fee);
            ps.setString(7, intro);
            ps.setString(8, price);
            ps.setInt(9, courseId);
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

    public void insertCourse(String name, String image, String description, String status, String categoryCategoryID, String feestatus, String introduce, String originalPrice, int userIdUser) {
        String sql = "INSERT INTO Course ( Name, Image, Description, Status, Category_categoryID, Feestatus, Introduce, OriginalPrice, UserId_User) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, description);
            ps.setString(4, status);
            ps.setString(5, categoryCategoryID);
            ps.setString(6, feestatus);
            ps.setString(7, introduce);
            ps.setString(8, originalPrice);
            ps.setInt(9, userIdUser);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception appropriately
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void delCourse(int id) {
        String deleteLessonsSql = "DELETE FROM Lesson WHERE Course_courseID=?";
        String deleteCourseSql = "DELETE FROM Course WHERE CouseraID=?";
        Connection conn = null;
        PreparedStatement psDeleteLessons = null;
        PreparedStatement psDeleteCourse = null;

        try {
            // Kết nối đến database
            conn = new DBContext().getConnection();
            conn.setAutoCommit(false);  // Bắt đầu transaction

            // Xóa tất cả các bài học liên quan đến course
            psDeleteLessons = conn.prepareStatement(deleteLessonsSql);
            psDeleteLessons.setInt(1, id);
            psDeleteLessons.executeUpdate();

            // Xóa course
            psDeleteCourse = conn.prepareStatement(deleteCourseSql);
            psDeleteCourse.setInt(1, id);
            psDeleteCourse.executeUpdate();

            // Commit transaction
            conn.commit();

        } catch (SQLException e) {
            if (conn != null) {
                try {
                    conn.rollback();  // Rollback nếu có lỗi
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            e.printStackTrace();
        } finally {
            try {
                if (psDeleteLessons != null) {
                    psDeleteLessons.close();
                }
                if (psDeleteCourse != null) {
                    psDeleteCourse.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public List<Course> getCourseByStatus(int status, int uid) {
        List<Course> courses = new ArrayList<>();
        String query = "SELECT * FROM Course WHERE Status = ? and UserId_User=?";

        try {
            conn = new DBContext().getConnection(); // Establishing the connection
            ps = conn.prepareStatement(query);
            ps.setInt(1, status); // Setting the status parameter
            ps.setInt(2, uid);
            rs = ps.executeQuery();

            while (rs.next()) {
                int courseId = rs.getInt("CouseraID");
                String name = rs.getString("Name");
                String img = rs.getString("Image");
                String des = rs.getString("Description");
                int cate = rs.getInt("Category_categoryID");
                int fee = rs.getInt("FeeStatus");
                String intro = rs.getString("Introduce");
                int price = rs.getInt("OriginalPrice");

                Course course = new Course(courseId, name, img, des, 1, cate, fee, intro, price, uid);
                courses.add(course);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return courses;
    }

    public static void main(String[] args) {
        System.out.println(new CourseDAO().getCourseByStatus(1, 3));
    }

    public List<Course> findAllStatus(int statusCourse) {
        String sql = "SELECT * FROM dbo.Course\n"
                + "WHERE  [Status] = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("status", statusCourse);
        return queryGenericDAO(Course.class, sql, parameterMap);
    }

}
