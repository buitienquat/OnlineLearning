/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Course;

import controller.constant.commonConstant;
import dal.implement.AnswerDAO;
import dal.implement.QuestionDAO;
import dal.implement.QuizDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import jdk.jfr.consumer.RecordingFile;
import model.Answer;
import model.Page;
import model.Question;
import model.Quiz;

/**
 *
 * @author Admin
 */
public class courseQuizController extends HttpServlet {

    AnswerDAO answerDAO = new AnswerDAO();
    QuizDAO quizDAO = new QuizDAO();
    QuestionDAO questionDAO = new QuestionDAO();

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
            out.println("<title>Servlet courseQuiz</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet courseQuiz at " + request.getContextPath() + "</h1>");
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
        String Quizid = request.getParameter("quizid");
        String pageRaw = request.getParameter("page");
        int quizid = 0, page = 1;
        try {
            quizid = Integer.parseInt(Quizid);
            page = Integer.parseInt(pageRaw);
        } catch (Exception e) {
            page = 1;
        }
        String requestURL = request.getRequestURL().toString();
        Question question = new Question();
        Page pageControl = new Page();

        question.setQuizId_Quiz(quizid);

        // Lấy câu hỏi cho trang hiện tại (mỗi trang là một câu hỏi)
        List<Question> listquestion = questionDAO.getQuestionByQuizId(question, page);

        if (listquestion.size() > 0) {
            question = listquestion.get(0);  // Lấy câu hỏi đầu tiên trong danh sách (vì mỗi trang chỉ có 1 câu hỏi)
        }

        // Lấy đáp án cho câu hỏi hiện tại
        Answer answer = new Answer();
        answer.setQuestionId_Question(question.getQuestionId());
        List<Answer> listanswer = answerDAO.getAnswerQuestionId(answer);

        int totalRecord = questionDAO.findTotalRecordQuestion(question);
        int totalPage = (totalRecord % commonConstant.RECORD_PER_PAGE_QUIZ) == 0
                ? (totalRecord / commonConstant.RECORD_PER_PAGE_QUIZ)
                : (totalRecord / commonConstant.RECORD_PER_PAGE_QUIZ) + 1;
        pageControl.setUrlPattern(requestURL + "?quizid=" + quizid + "&");
        pageControl.setPage(page);
        pageControl.setTotalPage(totalPage);
        pageControl.setTotalRecord(totalRecord);

         HttpSession session = request.getSession();
        Map<Integer, Integer> selectedAnswers = (Map<Integer, Integer>) session.getAttribute("selectedAnswers");
        if (selectedAnswers == null) {
            selectedAnswers = new HashMap<>();
        }

        request.setAttribute("selectedAnswer", selectedAnswers.get(question.getQuestionId()));

        request.setAttribute(commonConstant.REQUEST_LISTQUESTION, listquestion);
        request.setAttribute("listanswer", listanswer);
        request.setAttribute(commonConstant.REQUEST_PAGE_CONTROL, pageControl);
        request.getRequestDispatcher("view/course/courseQuiz.jsp").forward(request, response);
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
         HttpSession session = request.getSession();
        Map<Integer, Integer> selectedAnswers = (Map<Integer, Integer>) session.getAttribute("selectedAnswers");
        if (selectedAnswers == null) {
            selectedAnswers = new HashMap<>();
        }

        int questionId = Integer.parseInt(request.getParameter("questionid"));
        int selectedAnswer = Integer.parseInt(request.getParameter("radioANS"));

        selectedAnswers.put(questionId, selectedAnswer);
        session.setAttribute("selectedAnswers", selectedAnswers);

        String nextPage = request.getParameter("nextPage");
        response.sendRedirect(nextPage);
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
