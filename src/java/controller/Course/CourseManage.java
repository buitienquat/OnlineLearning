/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Course;



import controller.constant.commonConstant;
import dal.implement.CategoryDAO;
import dal.implement.CourseDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author hienhack
 */
public class CourseManage extends HttpServlet {

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
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute(commonConstant.SESSION_ACCOUNT);
        CourseDAO dao = new CourseDAO();
        int id = 0;
        try {
            id = Integer.parseInt(request.getParameter("id"));
        } catch (Exception e) {

        }
        String status = request.getParameter("status");
        int statusValue = 0;
        String type = request.getParameter("type");
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
            dao.delCourse(id);
            response.sendRedirect("coursemanage?status=" + statusValue + "&page=" + currentPage);
            return;
        }
        CategoryDAO cdao = new CategoryDAO();
        
        List<model.Category> catelist = cdao.findAll();
        List<model.Course> list = dao.getCourseByStatus(statusValue, user.getUserID());
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
        
        
        request.setAttribute("cList", list);
        request.setAttribute("cateList", catelist);
        request.setAttribute("currentPage", index);
        request.setAttribute("totalPages", totalPage);
        request.setAttribute("statusValue", statusValue);
         request.getRequestDispatcher("view/course/coursemanage.jsp").forward(request, response);
        
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
            Logger.getLogger(CourseManage.class.getName()).log(Level.SEVERE, null, ex);
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
        User user = (User) session.getAttribute(commonConstant.SESSION_ACCOUNT);
        String uploadFolder = request.getServletContext().getRealPath("") + "../../web/assets/images/courses";
        Path uploadPath = Paths.get(uploadFolder);
        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath); // nếu thư mục upload không tồn tại, tạo mới
        }
        Part imagePart = request.getPart("image"); // lấy phần tử 'image' từ yêu cầu
        String imageFilename = request.getParameter("currentImageFilename"); // tên tệp tin ảnh
        if (imagePart != null && imagePart.getSize() > 0) {
            imageFilename = Paths.get(imagePart.getSubmittedFileName()).getFileName().toString(); // lấy tên tệp tin mới
            imagePart.write(Paths.get(uploadPath.toString(), imageFilename).toString()); // lưu tệp tin vào thư mục upload
        }
        String action = request.getParameter("action");
        if (action != null && !action.isEmpty()) {
            String title = request.getParameter("title");
            String des = request.getParameter("description");
            String introduce = request.getParameter("introduce");
            String fee = request.getParameter("fee");
            String price = request.getParameter("price");
            String status = "";
            String cate = request.getParameter("cate");
            if (action.equals("save")) {
                status = "0";
            } else if (action.equals("send")) {
                status = "2";
            }
    

           CourseDAO dao = new CourseDAO();
            String courseIdParam = request.getParameter("courseid");
            if (courseIdParam != null && !courseIdParam.isEmpty()) {
                int courseId = Integer.parseInt(courseIdParam);
                dao.updateCourse(title, imageFilename, des, status, cate, fee, introduce, price, courseId);
            } else {
                dao.insertCourse(title, imageFilename, des, status, cate, fee, introduce, price,user.getUserID());
            }
        
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(CourseManage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }}

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
