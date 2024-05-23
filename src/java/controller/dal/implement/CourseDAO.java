/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.dal.implement;

import controller.dal.GenericDAO;
import java.util.LinkedHashMap;
import java.util.List;
import model.Course;

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

    public static void main(String[] args) {
        System.out.println(new CourseDAO().findAll());
    }

    public List<Course> findCourseByName(String searchName) {
        String sql = "SELECT * FROM dbo.Course\n"
                + "WHERE [Name] LIKE ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + searchName + "%");
        return queryGenericDAO(Course.class, sql, parameterMap);
    }

    public List<Course> findCourseByCategory(int cateId) {
        String sql = "SELECT * FROM dbo.Course\n"
                + "WHERE Category_categoryID = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("cateId", cateId);
        return queryGenericDAO(Course.class, sql, parameterMap);
    }

}
