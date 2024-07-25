/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Course;


import dal.implement.BlogDAO;
import dal.implement.CourseDB;
import dal.implement.LessonDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Lesson;

/**
 *
 * @author hienhack
 */
public class LessonManage extends HttpServlet {

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
            throws ServletException, IOException {
        CourseDB coursedb = new CourseDB();
        LessonDAO dao = new LessonDAO();
        
        String courseidString = request.getParameter("courseid");
        if (courseidString == null || courseidString.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Course ID is required.");
            return;
        }

        int courseid;
        try {
            courseid = Integer.parseInt(courseidString);
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid Course ID format.");
            return;
        }
        int id = 0;
        try {
            id = Integer.parseInt(request.getParameter("id"));
        } catch (Exception e) {

        }
        String coursename = request.getParameter("coursename");
        String type = request.getParameter("type");
        int currentPage = 1;
        try {
            currentPage = Integer.parseInt(request.getParameter("page"));
        } catch (NumberFormatException e) {
            // Log lỗi nếu cần
        }
        if (type != null && type.equals("0")) {
           dao.delLesson(id);
           response.sendRedirect("lessonmanage?courseid="+courseid+"&coursename" +coursename + "&page=" + currentPage);
            return;
        }
        List<Lesson> listLesson = coursedb.getLessonbyCourseID(courseid);
        int index = 1;
        if (request.getParameter("page") != null) {
            try {
                index = Integer.parseInt(request.getParameter("page"));
            } catch (NumberFormatException e) {
            }
        }
        int totalBlogs = listLesson.size();
        int pageSize = 2; // Số lượng blog mỗi trang
        int totalPage = totalBlogs % pageSize == 0 ? (totalBlogs / pageSize) : ((totalBlogs / pageSize) + 1);

        if (totalBlogs > 0) {
            int startIndex = (index - 1) * pageSize;
            int endIndex = Math.min(startIndex + pageSize, totalBlogs);
            listLesson = listLesson.subList(startIndex, endIndex);
        }

        
        request.setAttribute("listLesson", listLesson);
        request.setAttribute("currentPage", index);
        request.setAttribute("totalPages", totalPage);
        request.getRequestDispatcher("view/course/lessonmanage.jsp").forward(request, response);
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
        processRequest(request, response);
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
         String title = request.getParameter("title");
        String video = request.getParameter("video");
        String note = request.getParameter("note");
        String numberLessonString = request.getParameter("number");
        
        if (title == null || video == null || note == null || numberLessonString == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing required parameters.");
            return;
        }

        LessonDAO dao = new LessonDAO();
        String courseidString = request.getParameter("courseid");
        if (courseidString == null || courseidString.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Course ID is required.");
            return;
        }

        try {
            int courseid = Integer.parseInt(courseidString);
            String lessonidParam = request.getParameter("lessonid");
            if (lessonidParam !=null && ! lessonidParam.isEmpty()){
                int lessonid = Integer.parseInt(lessonidParam);
                dao.updateLesson(title, video, note, numberLessonString, lessonid, courseid);
            }else{
                dao.insertLesson(title, courseid, video, note, numberLessonString);
            }         
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid Course ID format.");
            return;
        }
        
        processRequest(request, response);
    
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
