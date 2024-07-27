/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.Admin;


import dal.implement.BlogDB;
import dal.implement.UserDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Blog;
import model.User;

/**
 *
 * @author vuduc
 */
public class BlogManager extends HttpServlet {
   private static final int DEFAULT_PAGE_SIZE = 10;
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        UserDBContext dbContext = new UserDBContext();
        BlogDB blogdb = new BlogDB();
        List<Blog> listBlog = blogdb.getAllBlog();
        String status = request.getParameter("status");

        if (status != null) {
            switch (status) {
                case "1":
                    listBlog = blogdb.getBlogbyStatuspage(1);
                    break;
                case "0":
                    listBlog = blogdb.getBlogbyStatuspage(0);
                    break;
                case "2":
                    listBlog = blogdb.getBlogbyStatuspage(2);
                    break;
                default:
                    
                    response.getWriter().write("Unknown status");
                    break;
            }
        } else {
            listBlog = blogdb.getAllBlog();
            response.getWriter().write("Status parameter is missing");
        }

        String pageStr = request.getParameter("page");
        String pageSizeStr = request.getParameter("pageSize");
        int page = (pageStr == null || pageStr.isEmpty()) ? 1 : Integer.parseInt(pageStr);
        int pageSize = (pageSizeStr == null || pageSizeStr.isEmpty()) ? DEFAULT_PAGE_SIZE : Integer.parseInt(pageSizeStr);

        int start = (page - 1) * pageSize;
        int end = Math.min(start + pageSize, listBlog.size());

        List<Blog> pageBlog = listBlog.subList(start, end);
        List<User> listUser = dbContext.getAllUser();
        int totalPages = (int) Math.ceil((double) listBlog.size() / pageSize);

        request.setAttribute("listBlog", listBlog);
        request.setAttribute("listUser", listUser);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("pageSize", pageSize);
        request.setAttribute("status", status); // Add status to the request attributes

        request.getRequestDispatcher("view/admin/Bloglist.jsp").forward(request, response);
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
