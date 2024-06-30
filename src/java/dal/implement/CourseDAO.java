/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import controller.constant.commonConstant;
import dal.GenericDAO;
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

    public List<Course> findCourseByName(String searchName, int page) {
        String sql = "SELECT *\n"
                + "FROM dbo.Course\n"
                + "WHERE [Name] LIKE ?\n"
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
                + "WHERE Category_categoryID = ? AND Feestatus > 0\n"
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
                + "WHERE Category_categoryID = ?\n"
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
                + "WHERE [Name] LIKE ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + searchName + "%");
        return findTotalRecordGenericDAO(Course.class, sql, parameterMap);
    }

    public int findTotalRecordByCategory(String categoryId) {
        String sql = "SELECT COUNT(*) \n"
                + "FROM dbo.Course\n"
                + "WHERE Category_categoryID = ? AND Feestatus > 0";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryId", categoryId);
        return findTotalRecordGenericDAO(Course.class, sql, parameterMap);
    }

    public int findTotalRecordByCategoryAll(String categoryIdAll) {
        String sql = "SELECT COUNT(*) \n"
                + "FROM dbo.Course\n"
                + "WHERE Category_categoryID = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryId", categoryIdAll);
        return findTotalRecordGenericDAO(Course.class, sql, parameterMap);
    }

    public int findTotalRecord() {
        String sql = "SELECT COUNT(*) \n"
                + "FROM dbo.Course";
        parameterMap = new LinkedHashMap<>();
        return findTotalRecordGenericDAO(Course.class, sql, parameterMap);
    }

    public List<Course> findByPage(int page) {
        String sql = "SELECT *\n"
                + "FROM dbo.Course\n"
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
                + "WHERE Category_categoryID = ? AND Feestatus = 0";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryidfree", categoryIdFree);
        return findTotalRecordGenericDAO(Course.class, sql, parameterMap);
    }

    public List<Course> findCourseByCategoryFree(int cateIdFree, int page) {
        String sql = "SELECT * \n"
                + "FROM dbo.Course\n"
                + "WHERE Category_categoryID = ? AND Feestatus = 0\n"
                + "ORDER BY CouseraID\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT ? ROWS ONLY";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("cateId", cateIdFree);
        parameterMap.put("offset", (page - 1) * commonConstant.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConstant.RECORD_PER_PAGE);
        return queryGenericDAO(Course.class, sql, parameterMap);
    }

    public static void main(String[] args) {
        Course c = new Course();
        c.setCategory_categoryID(1);
        System.out.println(new CourseDAO().findCourseByCategoryFree(1, 1));
    }

}
