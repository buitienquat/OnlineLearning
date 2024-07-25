package dal.implement;

import dal.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog;

public class BlogDB extends DBContext {

    public List<Blog> getAllBlog() {
        List<Blog> list = new ArrayList<>();
        String sql = "SELECT * FROM Blog";
        try (Connection conn = getConnection();
             PreparedStatement stm = conn.prepareStatement(sql);
             ResultSet rs = stm.executeQuery()) {

            while (rs.next()) {
                Blog blog = new Blog();
                blog.setBlogId(rs.getInt(1));
                blog.setBlogTitle(rs.getString(2));
                blog.setBlogImage(rs.getString(3));
                blog.setBlogDetail(rs.getString(4));
                blog.setPostDate(rs.getDate(5));
                blog.setBlogStatus(rs.getInt(6));
                blog.setBlogTagID(rs.getInt(7));
                blog.setUserId(rs.getInt(8));
                list.add(blog);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Blog> getBlogbyStatuspage(int status) {
        List<Blog> list = new ArrayList<>();
        String sql = "SELECT * FROM Blog WHERE Blog.BlogStatus = ?";
        try (Connection conn = getConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, status);
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    Blog blog = new Blog();
                    blog.setBlogId(rs.getInt(1));
                    blog.setBlogTitle(rs.getString(2));
                    blog.setBlogImage(rs.getString(3));
                    blog.setBlogDetail(rs.getString(4));
                    blog.setPostDate(rs.getDate(5));
                    blog.setBlogStatus(rs.getInt(6));
                    blog.setBlogTagID(rs.getInt(7));
                    blog.setUserId(rs.getInt(8));
                    list.add(blog);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void updateBlog(int blogid, int status) {
        String sql = "UPDATE Blog SET BlogStatus = ? WHERE BlogId = ?";
        try (Connection conn = getConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, status);
            stm.setInt(2, blogid);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BlogDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        System.out.println(new BlogDB().getAllBlog());
    }
}
