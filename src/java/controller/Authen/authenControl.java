/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Authen;

import Utility.Encryption;
import controller.constant.commonConstant;

import dal.implement.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import model.User;

/**
 *
 * @author Admin
 */
public class authenControl extends HttpServlet {

    UserDAO userDAO = new UserDAO();

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
            out.println("<title>Servlet authenControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet authenControl at " + request.getContextPath() + "</h1>");
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
        //get ve action
        String action = request.getParameter("action") != null
                ? request.getParameter("action")
                : "";
        //dua theo action set URL trang can chuyen den
        String url = null;
        switch (action) {
            case "login":
                url = "view/authen/login.jsp";
                break;
            case "log-out":
                url = logOut(request, response);
                break;
            case "register":
                url = "view/authen/register.jsp";
                break;
            case "logingoogle":
                url = loginGoogle(request, response);
                break;
            default:
                url = "home";
        }

        //chuyen trang
        request.getRequestDispatcher(url).forward(request, response);
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
        //get ve action
        String action = request.getParameter("action") != null
                ? request.getParameter("action")
                : "";
        //dựa theo action để xử lí request
        String url;
        switch (action) {
            case "login":
                url = loginDoPost(request, response);
                break;
            case "register":
                url = registerDoPost(request, response);
                break;
            default:
                url = "home";
        }
        request.getRequestDispatcher(url).forward(request, response);
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

    private String loginDoPost(HttpServletRequest request, HttpServletResponse response) {
        String url = null;
        //get về các thong tin người dufg nhập
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        password = Encryption.toSHA1(password);

        //kiểm tra thông tin có tồn tại trong DB ko
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        User accFoundByUsernamePass = userDAO.findByUsernameAndPass(user);

        //true => trang home ( set account vao trong session )
        if (accFoundByUsernamePass != null) {
            request.getSession().setAttribute(commonConstant.SESSION_ACCOUNT, accFoundByUsernamePass);
            url = "home";
        }//false => quay tro lai trang login ( set them thong bao loi )
        else {
            request.setAttribute("error", "Username or password incorrect!!!");
            url = "view/authen/login.jsp";
        }
        return url;
    }

    private String logOut(HttpServletRequest request, HttpServletResponse response) {
        request.getSession().removeAttribute(commonConstant.SESSION_ACCOUNT);
        return "home";
    }

    private String registerDoPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String url = null;
        //get ve cac thong tin nguoi dung nhpa
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");

        // mã hoá password
        password = Encryption.toSHA1(password);

        //kiem tra xem username da ton tai trong db
        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setFullName(fullname);
        boolean isExistUsername = userDAO.checkUsernameExist(user);
        boolean isExistEmail = userDAO.checkEmailExist(user);
        //true => quay tro lai trang register (set thong bao loi )
        if (isExistUsername) {
            request.setAttribute("error", "Username exist !!");
            url = "view/authen/register.jsp";
        } else if (isExistEmail) {
            request.setAttribute("error", "Email exist !!");
            url = "view/authen/register.jsp";
        } //false => quay tro lai trang home ( ghi tai khoan vao trong DB )
        else {
            userDAO.insert(user);
            url = "home";
        }
        return url;

    }


    private String loginGoogle(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String url = null;
        String code = request.getParameter("code");
        GoogleLogin gg = new GoogleLogin();
        String accessToken = gg.getToken(code);
        User acc = gg.getUserInfo(accessToken);
        boolean isExistEmail = userDAO.checkEmailExist(acc);
        if (isExistEmail) {
            request.getSession().setAttribute(commonConstant.SESSION_ACCOUNT, acc);
            url = "home";
        } else {
            userDAO.insert(acc);
            request.getSession().setAttribute(commonConstant.SESSION_ACCOUNT, acc);
            url = "home";
        }
        return url;
    }

    

}
