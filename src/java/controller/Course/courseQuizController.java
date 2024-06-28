/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Course;

import controller.constant.commonConstant;
import dal.implement.AnswerDAO;
import dal.implement.QuestionDAO;
import dal.implement.QuizDAO;
import dal.implement.ResultDAO;
import dal.implement.UserAnswerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import jdk.jfr.consumer.RecordingFile;
import model.Answer;
import model.Page;
import model.Question;
import model.Quiz;
import model.Result;
import model.UserAnswer;

/**
 *
 * @author Admin
 */
public class courseQuizController extends HttpServlet {

    UserAnswerDAO userAnswerDAO = new UserAnswerDAO();
    ResultDAO resultDAO = new ResultDAO();
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
        String action = request.getParameter("action");
        if ("resetquiz".equals(action)) {
            handleRetry(request, response);
        } else if ("viewdetails".equals(action)) {
            handleViewDetails(request, response);
        } else {
            handleQuiz(request, response);

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
        HttpSession session = request.getSession();
        String Quizid = request.getParameter("idquiz");
        int quizid = 0;
        try {
            quizid = Integer.parseInt(Quizid);

        } catch (Exception e) {

        }
        int userid = 4;
        // Lấy danh sách câu hỏi từ request attribute (được set trong doGet)
        List<Question> listquestion = (List<Question>) session.getAttribute(commonConstant.REQUEST_LISTQUESTION);
        // Tạo một map để lưu câu hỏi và đáp án được chọn
        Map<Integer, Integer> userAnswers = new HashMap<>();
        int countUserTick = 0;
        // Lặp qua các câu hỏi
        for (Question question : listquestion) {
            // Lấy giá trị của đáp án đã chọn cho câu hỏi hiện tại
            String answerIdStr = request.getParameter("radioANS_" + question.getQuestionId());
            
            if (answerIdStr != null) {
                try {
                    int answerId = Integer.parseInt(answerIdStr);
                    userAnswers.put(question.getQuestionId(), answerId);
                    countUserTick++;
                } catch (NumberFormatException e) {
                    // Xử lý lỗi nếu giá trị không phải là số nguyên hợp lệ
                    e.printStackTrace();
                }
            }
        }
        // Biến lưu số câu trả lời đúng
        int correctAnswers = 0;
        // Kiểm tra đáp án của người dùng với đáp án đúng trong cơ sở dữ liệu
        for (Map.Entry<Integer, Integer> entry : userAnswers.entrySet()) {
            int questionId = entry.getKey();
            int userAnswerId = entry.getValue();

            // Lấy đáp án đúng từ cơ sở dữ liệu
            Answer answer = new Answer();
            answer.setQuestionId_Question(questionId);
            Answer correctAnswer = answerDAO.getCorrectAnswerByQuestionId(answer);
            if (correctAnswer != null && correctAnswer.getAnswerID() == userAnswerId) {
                correctAnswers++;
            }
            //save kết quả người dùng vào database
            UserAnswer userAnswer = new UserAnswer();
            userAnswer.setUserId(userid);
            userAnswer.setQuizId(quizid);
            userAnswer.setQuestionId(questionId);
            userAnswer.setAnswerId(userAnswerId);
            userAnswerDAO.insert(userAnswer);
        }
        //Lưu bài làm vào cơ sở dữ liệu
        // Tính điểm (có thể dựa vào số câu trả lời đúng hoặc tỷ lệ %)
        int totalQuestions = listquestion.size();
        float score = (float) correctAnswers / totalQuestions * 100;

        Result result = new Result();
        result.setUserId(userid);
        result.setQuizId(quizid);
        int attemptCount = resultDAO.numberOfTest(result);
        attemptCount++;
        result.setAttemptCount(attemptCount);
        result.setCorrectAnswers(correctAnswers);
        result.setTotalQuestions(totalQuestions);
        result.setScore(score);
        resultDAO.insert(result);
        
        request.setAttribute("countUserTick", countUserTick);
        request.setAttribute("attemptCount", attemptCount);
        request.setAttribute("correctAnswers", correctAnswers);
        request.setAttribute("totalQuestions", totalQuestions);
        request.setAttribute("score", score);
        request.setAttribute("quizid", quizid);

        // Thêm log để kiểm tra các giá trị
        System.out.println("Correct Answers: " + correctAnswers);
        System.out.println("Total Questions: " + totalQuestions);
        System.out.println("Score: " + score);
        System.out.println("Quiz ID: " + quizid);

        request.getRequestDispatcher("view/course/courseQuizResult.jsp").forward(request, response);

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

    private void handleRetry(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String Quizid = request.getParameter("quizid");
        int quizid = 0;
        try {
            quizid = Integer.parseInt(Quizid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        int userid = 4;
        UserAnswer userAnswer = new UserAnswer();
        userAnswer.setUserId(userid);
        userAnswer.setQuizId(quizid);
        userAnswerDAO.delete(userAnswer);
        handleQuiz(request, response);
    }

    private void handleQuiz(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String Quizid = request.getParameter("quizid");
        int quizid = 0;
        try {
            quizid = Integer.parseInt(Quizid);

        } catch (Exception e) {
            e.printStackTrace();
        }
        Question question = new Question();
        question.setQuizId_Quiz(quizid);
        // Lấy câu hỏi cho trang hiện tại (mỗi trang là một câu hỏi)
        List<Question> listquestion = questionDAO.getQuestionByQuizId(question);

        // Đối với mỗi câu hỏi, lấy danh sách câu trả lời tương ứng
        Map<Integer, List<Answer>> questionAnswersMap = new HashMap<>();
        for (Question q : listquestion) {
            // Lấy danh sách câu trả lời từ DAO dựa trên questionId của câu hỏi hiện tại
            List<Answer> answers = answerDAO.getAnswersByQuestionId(q.getQuestionId());
            // Đưa danh sách câu trả lời vào map với key là questionId
            questionAnswersMap.put(q.getQuestionId(), answers);
        
        }
        HttpSession session = request.getSession();
        session.setAttribute(commonConstant.REQUEST_LISTQUESTION, listquestion);
        session.setAttribute("questionAnswersMap", questionAnswersMap);
        request.getRequestDispatcher("view/course/courseQuiz.jsp").forward(request, response);

    }

    private void handleViewDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Quizid = request.getParameter("quizid");
        int quizid = 0;
        try {
            quizid = Integer.parseInt(Quizid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        int userid = 4;
        UserAnswer userAnswer = new UserAnswer();
        userAnswer.setUserId(userid);
        userAnswer.setQuizId(quizid);

        List<UserAnswer> listUserAnswers = userAnswerDAO.getUserAnswersByQuizAndUser(userAnswer);
        List<Question> allQuestions = getAllQuestionsForQuiz(quizid);  // Lấy tất cả câu hỏi cho quiz
        Map<Integer, Question> questions = new HashMap<>();
        Map<Integer, Answer> correctAnswers = new HashMap<>();
        Map<Integer, List<Answer>> questionAnswersMap = new HashMap<>();

        for (Question q : allQuestions) {
            questions.put(q.getQuestionId(), q);

            Answer correctAnswer = answerDAO.getCorrectAnswerQuestionId(q.getQuestionId());
            correctAnswers.put(q.getQuestionId(), correctAnswer);

            List<Answer> answers = answerDAO.getAnswersByQuestionId(q.getQuestionId());
            questionAnswersMap.put(q.getQuestionId(), answers);
        }

        Map<Integer, Answer> selectedAnswers = new HashMap<>();
        for (UserAnswer userAns : listUserAnswers) {
            Answer answer = answerDAO.getAnswerById(userAns.getAnswerId());
            selectedAnswers.put(userAns.getQuestionId(), answer);
        }

        request.setAttribute("questions", questions);
        request.setAttribute("listUserAnswers", listUserAnswers);
        request.setAttribute("selectedAnswers", selectedAnswers);
        request.setAttribute("correctAnswers", correctAnswers);
        request.setAttribute("questionAnswersMap", questionAnswersMap);

        request.getRequestDispatcher("view/course/courseQuizDetails.jsp").forward(request, response);
    }

    private List<Question> getAllQuestionsForQuiz(int quizid) {
        Question question = new Question();
        question.setQuizId_Quiz(quizid);
        return questionDAO.getQuestionByQuizId(question);
    }
}
