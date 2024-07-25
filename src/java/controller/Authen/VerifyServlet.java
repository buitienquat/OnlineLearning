/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Authen;

import dal.implement.UserDBContext;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import model.User;

/**
 *
 * @author vuduc
 */
public class VerifyServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        String verificationCode = (String) request.getSession().getAttribute("verificationCode");

        if (code.equals(verificationCode)) {
            // Mã xác minh đúng, thêm thông tin người dùng vào cơ sở dữ liệu
            String email = (String) request.getSession().getAttribute("email");
            String username = (String) request.getSession().getAttribute("username");
            String password = (String) request.getSession().getAttribute("password");
            if (username == null) {
                request.getRequestDispatcher("view/authen/reset_password.jsp").forward(request, response);
            } else {

                // Thêm thông tin người dùng vào cơ sở dữ liệu
                UserDBContext userDB = new UserDBContext();
                userDB.addUser(email, username, password);
                response.setContentType("text/html;charset=UTF-8");
                PrintWriter out = response.getWriter();
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Password Changed</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<script type='text/javascript'>");
                out.println("alert('Your have register successfully.');");
                out.println("window.location.href = 'authen?action=login';");
                out.println("</script>");
                out.println("</body>");
                out.println("</html>");
            }

            // Thông báo thành công
        } else {
            // Mã xác minh sai, thông báo lỗi
            response.getWriter().println("Invalid verification code.");
        }
    }
}
