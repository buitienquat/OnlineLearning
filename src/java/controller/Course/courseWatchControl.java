/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Course;

import controller.constant.commonConstant;
import dal.implement.CategoryDAO;
import dal.implement.CourseDAO;
import dal.implement.LessonDAO;
import dal.implement.QuizDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;
import model.Category;
import model.Course;
import model.Lesson;
import model.Page;
import model.Quiz;

/**
 *
 * @author Admin
 */
public class courseWatchControl extends HttpServlet {
    QuizDAO quizDAO = new QuizDAO();
    CourseDAO courseDAO = new CourseDAO();
    CategoryDAO categoryDAO = new CategoryDAO();
    LessonDAO lessonDAO = new LessonDAO();

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet courseWatchControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet courseWatchControl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String courseraID = request.getParameter("id");
        String numberLesson = request.getParameter("numberLesson");
        String Quizid = request.getParameter("quizid");
        int id = 0, num = 0,quizid =0;
        try {
            id = Integer.parseInt(courseraID);
            num = Integer.parseInt(numberLesson);
            quizid =Integer.parseInt(Quizid);
        } catch (NumberFormatException e) {
            response.sendRedirect("course");
        }
        Lesson lesson = new Lesson();
        lesson.setCourse_courseID(id);
        lesson.setNumberLesson(num);
        lesson.setTime(Timestamp.valueOf(LocalDateTime.now()));
//        int quizid = lesson.getQuizId_Quiz();
//        lesson.setQuizId_Quiz(quizid);
        List<Lesson> findLesson = lessonDAO.findLessonByCourseId(lesson);
        Lesson autoFirstCourse = lessonDAO.autoFirstCourse(lesson);
        int totalrecord = lessonDAO.findTotalRecord(lesson);
        Page pageControl = new Page();
        pageControl.setTotalRecord(totalrecord);
        Quiz quiz = new Quiz();
        quiz.setQuizId(quizid);
        Quiz checkquiz = quizDAO.findQuizId(quiz);
        
        request.setAttribute(commonConstant.REQUEST_QUIZ, checkquiz);
        request.setAttribute(commonConstant.REQUEST_PAGE_CONTROL, pageControl);
        request.setAttribute(commonConstant.REQUEST_AUTO_FIRST_COURSE, autoFirstCourse);
        request.setAttribute(commonConstant.REQUEST_FINDLESSON, findLesson);

        request.getRequestDispatcher("view/course/courseWatch.jsp").forward(request, response);
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
