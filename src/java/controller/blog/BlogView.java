/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.blog;

import dal.implement.BlogDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.BlogTag;
import model.Blog;

/**
 *
 * @author hienhack
 */
public class BlogView extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        BlogDAO dao = new BlogDAO();
        String tagParam = request.getParameter("tagid");
        List<Blog> randlist = dao.getRadomBlog();
        List<Blog> list;

        if (tagParam != null) {
            try {
                int tagid = Integer.parseInt(tagParam);
                list = dao.getBlogFromTag(tagid);
            } catch (NumberFormatException e) {
                list = dao.getAllBlog();
            }
        } else {
            list = dao.getAllBlog();
        }

        List<BlogTag> blogT = dao.getListBlogTag();
        int index = 1;
        if (request.getParameter("page") != null) {
            try {
                index = Integer.parseInt(request.getParameter("page"));
            } catch (NumberFormatException e) {
                // Handle error if necessary
            }
        }
        int totalBlogs = list.size();
        int pageSize = 9; // Số lượng blog mỗi trang
        int totalPage = totalBlogs % pageSize == 0 ? (totalBlogs / pageSize) : ((totalBlogs / pageSize) + 1);

        if (totalBlogs > 0) {
            int startIndex = (index - 1) * pageSize;
            int endIndex = Math.min(startIndex + pageSize, totalBlogs);
            list = list.subList(startIndex, endIndex);
        }

        request.setAttribute("randList", randlist);
        request.setAttribute("TagList", blogT);
        request.setAttribute("bList", list);
        request.setAttribute("currentPage", index);
        request.setAttribute("totalPages", totalPage);
        request.getRequestDispatcher("view/blog/blogview.jsp").forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String query = request.getParameter("query");
            List<Blog> bList;
            BlogDAO dao = new BlogDAO();

            if (query != null && !query.trim().isEmpty()) {
                bList = dao.searchBlogs(query);
            } else {
                bList = dao.getAllBlog();
            }

            request.setAttribute("bList", bList);
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Blog.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(BlogView.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
