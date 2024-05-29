/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.util.LinkedHashMap;
import java.util.List;
import model.Category;

/**
 *
 * @author Admin
 */
public class CategoryDAO extends GenericDAO<Category> {

    @Override
    public List<Category> findAll() {
        return queryGenericDAO(Category.class);
    }

    @Override
    public int insert(Category t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public static void main(String[] args) {
        System.out.println(new CategoryDAO().findAll());
    }

    public Category findCategoryId(Category category) {
        String sql = "SELECT * FROM dbo.Category\n"
                + "WHERE CategoryID = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("CategoryID", category.getCategoryID());
//        return queryGenericDAO(Course.class, sql, parameterMap);
        // vì chỉ tìm về 1 khoá học mà queryGenericDAO lại trả về 1 list =>
        List<Category> list = queryGenericDAO(Category.class, sql, parameterMap);
        // nếu như hàm rỗng(empty) => ko có khoá học nào => trả về null
        //          ko rỗng         =>  có sản phẩm => nằm ở vị trí đầu tiên => lấy ở vị trí 0
        return list.isEmpty() ? null : list.get(0);
    }
}
