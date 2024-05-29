/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.util.List;
import model.Lesson;

/**
 *
 * @author Admin
 */
public class LessonDetailDAO extends GenericDAO<Lesson>{

    @Override
    public List<Lesson> findAll() {
        return queryGenericDAO(Lesson.class);
    }

    @Override
    public int insert(Lesson t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    public static void main(String[] args) {
        System.out.println(new LessonDetailDAO().findAll());
    }
}
