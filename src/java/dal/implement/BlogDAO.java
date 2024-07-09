/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import model.Blog;
import model.BlogTag;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import dal.DBContext;

/**
 *
 * @author hienhack
 */
public class BlogDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Blog> getAllBlog() {
        ArrayList<Blog> blogS = new ArrayList<>();
        String query = "select * from blog WHERE BlogStatus = 1 Order By BlogId Desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int blogId = rs.getInt("BlogID");
                String blogTitle = rs.getString("BlogTitle");
                String blogImage = rs.getString("BlogImage");
                String blogDetail = rs.getString("BlogDetail");
                Date postDate = rs.getDate("PostDate");
                int blogTagId = rs.getInt("BlogTagID"); // Lấy BlogTagID từ cơ sở dữ liệu
                int status = rs.getInt("BlogStatus");
                int uid = rs.getInt("UserID");

                // Tạo đối tượng Blog từ dữ liệu từ cơ sở dữ liệu
                Blog blog = new Blog(blogId, blogTitle, blogImage, blogDetail, postDate, blogTagId, status, uid);
                blogS.add(blog);
            }
        } catch (Exception e) {
        }
        return blogS;
    }

    public List<Blog> searchBlogs(String query) throws Exception {
        List<Blog> blogs = new ArrayList<>();
        String sql = "SELECT * FROM blog WHERE BlogTitle LIKE ? OR BlogDetail LIKE ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            String searchQuery = "%" + query + "%";
            ps.setString(1, searchQuery);
            ps.setString(2, searchQuery);

             rs = ps.executeQuery();

            while (rs.next()) {
                Blog blog = new Blog();
                blog.setBlogID(rs.getInt("blogID"));
                blog.setBlogTitle(rs.getString("BlogTitle"));
                blog.setBlogDetail(rs.getString("BlogDetail"));
                blog.setBlogImage(rs.getString("BlogImage"));
                blog.setPostDate(rs.getDate("PostDate"));
                blogs.add(blog);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return blogs;
    }

    public List<Blog> getRadomBlog() {
        ArrayList<Blog> blogS = new ArrayList<>();
        String query = "SELECT TOP 3 * FROM blog WHERE BlogStatus = 1\n"
                + "ORDER BY NEWID()";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int blogId = rs.getInt("BlogID");
                String blogTitle = rs.getString("BlogTitle");
                String blogImage = rs.getString("BlogImage");
                String blogDetail = rs.getString("BlogDetail");
                Date postDate = rs.getDate("PostDate");
                int blogTagId = rs.getInt("BlogTagID"); // Lấy BlogTagID từ cơ sở dữ liệu
                int status = rs.getInt("BlogStatus");
                int uid = rs.getInt("UserID");

                // Tạo đối tượng Blog từ dữ liệu từ cơ sở dữ liệu
                Blog blog = new Blog(blogId, blogTitle, blogImage, blogDetail, postDate, blogTagId, status, uid);
                blogS.add(blog);
            }
        } catch (Exception e) {
        }
        return blogS;
    }

    public void insertBlog(String title, String image, String detail, String status, String blogtagid, int uid) {
        String query = "INSERT INTO blog (BlogTitle, BlogImage, BlogDetail, PostDate, BlogStatus, BlogTagID, UserID) "
                + "VALUES (?, ?, ?, GETDATE(), ?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, image);
            ps.setString(3, detail);
            ps.setString(4, status);
            ps.setString(5, blogtagid);
            ps.setInt(6, uid);

            ps.executeUpdate();  // Use executeUpdate() for INSERT statement
        } catch (Exception e) {
            e.printStackTrace();
            // Handle the exception appropriately
        }
    }

    public List<BlogTag> getListBlogTag() throws SQLException, Exception {
        List<BlogTag> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM blogtag";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                list.add(new BlogTag(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (ps != null) {
                ps.close();
            }
            if (rs != null) {
                rs.close();
            }
        }
        return list;
    }

    public ArrayList<Blog> getBlogFromStatus(int status, int uid) throws Exception {
        ArrayList<Blog> blogS = new ArrayList<>();
        String sql = "SELECT * FROM blog WHERE BlogStatus = ? AND UserId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, status);
            ps.setInt(2, uid);
            rs = ps.executeQuery();
            while (rs.next()) {
                int blogId = rs.getInt("BlogID");
                String blogTitle = rs.getString("BlogTitle");
                String blogImage = rs.getString("BlogImage");
                String blogDetail = rs.getString("BlogDetail");
                Date postDate = rs.getDate("PostDate");
                int blogTagId = rs.getInt("BlogTagID"); // Lấy BlogTagID từ cơ sở dữ liệu

                // Tạo đối tượng Blog từ dữ liệu từ cơ sở dữ liệu
                Blog blog = new Blog(blogId, blogTitle, blogImage, blogDetail, postDate, blogTagId, 1, uid);
                blogS.add(blog);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đóng các tài nguyên
            if (ps != null) {
                ps.close();
            }
            if (rs != null) {
                rs.close();
            }
        }
        return blogS;
    }

    public List<Blog> getBlogFromTag(int tagid) throws SQLException {
        ArrayList<Blog> blogS = new ArrayList<>();
        String query = "select * from blog WHERE BlogTagID = ? AND BlogStatus = 1";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, tagid);
            rs = ps.executeQuery();
            while (rs.next()) {
                int blogId = rs.getInt("BlogID");
                String blogTitle = rs.getString("BlogTitle");
                String blogImage = rs.getString("BlogImage");
                String blogDetail = rs.getString("BlogDetail");
                Date postDate = rs.getDate("PostDate");
                int uid = rs.getInt("UserID");
                // Tạo đối tượng Blog từ dữ liệu từ cơ sở dữ liệu
                Blog blog = new Blog(blogId, blogTitle, blogImage, blogDetail, postDate, tagid, 1, uid);
                blogS.add(blog);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Đóng các tài nguyên
            if (ps != null) {
                ps.close();
            }
            if (rs != null) {
                rs.close();
            }
        }
        return blogS;
    }

    public void updateBlog(String title, String image, String detail, String status, String blogtagid, int blogid) {
        String query = "UPDATE blog set BlogTitle=?, BlogImage=?, PostDate=GETDATE(), BlogDetail=? , BlogStatus=?,BlogTagId=? WHERE BlogId =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, image);

            ps.setString(3, detail);
            ps.setString(4, status);
            ps.setString(5, blogtagid);
            ps.setInt(6, blogid);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            // Handle the exception appropriately
        }
    }

    public void delBlog(int id) {
        String sql = "delete from blog where BlogId=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
        } catch (Exception e) {
        }
    }

//    public Blog getBlogFromBlogID(int blogID) throws Exception {
//        Blog blogid = null;
//        try {
//            conn = new DBContext().getConnection();
//            String sql = "SELECT * FROM blog WHERE BlogId = ?";
//            ps = conn.prepareStatement(sql);
//            ps.setInt(1, blogID);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                    blogid = new Blog(rs.getInt(1), rs.getString(2), 
//                            rs.getString(3), rs.getString(4), 
//                            rs.getDate(5), rs.getInt(6), 
//                            rs.getBoolean(7), rs.getInt(8));
//            }
//        } catch (SQLException e) {
//        }
//        return blogid;
//    }
    public Blog getBlogFromBlogID(int blogID) throws Exception {
        Blog blog = null;

        try {
            conn = new DBContext().getConnection();
            String sql = "SELECT * FROM blog WHERE BlogId = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, blogID);
            rs = ps.executeQuery();
            if (rs.next()) {
                blog = new Blog(
                        rs.getInt("BlogID"),
                        rs.getString("BlogTitle"),
                        rs.getString("BlogImage"),
                        rs.getString("BlogDetail"),
                        rs.getDate("PostDate"),
                        rs.getInt("BlogTagID"),
                        rs.getInt("BlogStatus"),
                        rs.getInt("UserID")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return blog;
    }
//
    public static void main(String[] args) throws SQLException, Exception {
        BlogDAO dao = new BlogDAO();
        List<Blog> blog = dao.searchBlogs("kiem tra");
        for (Blog blogTag : blog) {
            System.out.println(blogTag);
        }
//
//        dao.updateBlog("check", "", "", "1", "1", 34);
//        System.out.println("success");
//        dao.getBlogFromBlogID(15);
//        System.out.println();
    }

//    public static void main(String[] args) {
//    BlogDAO dao = new BlogDAO();
//    try {
//        Blog blog = dao.getBlogFromBlogID(21);
//        if (blog != null) {
//            System.out.println("Blog ID: " + blog.getBlogID());
//            System.out.println("Title: " + blog.getBlogTitle());
//            System.out.println("Image: " + blog.getBlogImage());
//            System.out.println("Detail: " + blog.getBlogDetail());
//            System.out.println("Date: " + blog.getPostDate());
//            System.out.println("Tag: " + blog.getBlogTagID());
//            System.out.println("Status: " + blog.isBlogStatus());
//            System.out.println("UserID: " + blog.getUserID());
//        } else {
//            System.out.println("No blog found with the given ID.");
//        }
//    } catch (Exception e) {
//        e.printStackTrace();
//    }
//}
    
}
