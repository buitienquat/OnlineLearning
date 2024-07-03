/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.blog;

import dal.implement.BlogDAO;
import model.BlogTag;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hienhack
 */
public class WrittenBlog extends HttpServlet {

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
        int id = 0;
        try {
            id = Integer.parseInt(request.getParameter("id"));
        } catch (Exception e) {

        }
        String type = request.getParameter("type");
        String status = request.getParameter("status");
        int statusValue = 0;
        if (status != null) {
            try {
                statusValue = Integer.parseInt(status);
            } catch (NumberFormatException e) {

            }
        }
        int currentPage = 1;
        try {
            currentPage = Integer.parseInt(request.getParameter("page"));
        } catch (NumberFormatException e) {
            // Log lỗi nếu cần
        }

        if (type != null && type.equals("0")) {
            dao.delBlog(id);

            response.sendRedirect("writtenblog?status=" + statusValue + "&page=" + currentPage);
            return;
        }

//        HttpSession session = request.getSession();
//        User a = (User) session.getAttribute("expert");
//        int uid = a.getUserID();
        List<BlogTag> blogT = dao.getListBlogTag();

        List<model.Blog> list = dao.getBlogFromStatus(statusValue, 3);
        int index = 1;
        if (request.getParameter("page") != null) {
            try {
                index = Integer.parseInt(request.getParameter("page"));
            } catch (NumberFormatException e) {
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

        request.setAttribute("TagList", blogT);
        request.setAttribute("bList", list);
        request.setAttribute("currentPage", index);
        request.setAttribute("totalPages", totalPage);
        request.setAttribute("statusValue", statusValue);
        request.getRequestDispatcher("view/blog/writtenblog.jsp").forward(request, response);
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
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(WrittenBlog.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(WrittenBlog.class.getName()).log(Level.SEVERE, null, ex);
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
