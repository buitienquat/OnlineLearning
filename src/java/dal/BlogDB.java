/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog;
import model.Course;

/**
 *
 * @author vuduc
 */
public class BlogDB extends DBContext {
       public List<Blog> getAllBlog() {
        List<Blog> list = new ArrayList<>();
        try {
            String sql = "select * from Blog";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Blog blog = new Blog();
                blog.setBlogId(rs.getInt(1));
                blog.setBlogTitle(rs.getString(2));
                blog.setBlogImage(rs.getString(3));
                blog.setBlogDetail(rs.getString(4));
                blog. setPostDate(rs.getDate(5));
                blog. setBlogStatus(rs.getInt(6));
                blog. setBlogTagID(rs.getInt(7));
                blog. setUserId(rs.getInt(8));
                list.add(blog);
            }
        } catch (Exception ex) {
            Logger.getLogger(BlogDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
          public List<Blog> getBlogbyStatuspage( int status) {
        List<Blog> list = new ArrayList<>();
        try {
          String sql = "select * from Blog where Blog.BlogStatus = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, status);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Blog blog = new Blog();
                blog.setBlogId(rs.getInt(1));
                blog.setBlogTitle(rs.getString(2));
                blog.setBlogImage(rs.getString(3));
                blog.setBlogDetail(rs.getString(4));
                blog. setPostDate(rs.getDate(5));
                blog. setBlogStatus(rs.getInt(6));
                blog. setBlogTagID(rs.getInt(7));
                blog. setUserId(rs.getInt(8));
                list.add(blog);
            }
        } catch (Exception ex) {
            Logger.getLogger(BlogDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
               public void updateBlog(int blogid,int status) {
        try {
            String sql = "UPDATE Blog "
                    + "   SET BlogStatus=?"
                    + "   WHERE BlogId =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, status);
            stm.setInt(2, blogid);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BlogDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
