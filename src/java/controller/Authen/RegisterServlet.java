/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Authen;

import Utility.Encryption;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import java.io.UnsupportedEncodingException;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

/**
 *
 * @author vuduc
 */
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        password = Encryption.toSHA1(password);
        // Tạo mã xác minh
        String verificationCode = generateVerificationCode();

        // Gửi mã xác minh đến email của người dùng
        Send(email, verificationCode);

        // Lưu thông tin đăng ký tạm thời vào session
        request.getSession().setAttribute("email", email);
        request.getSession().setAttribute("username", username);
        request.getSession().setAttribute("password", password);
        request.getSession().setAttribute("fullname", fullname);
        request.getSession().setAttribute("verificationCode", verificationCode);
        // Chuyển hướng người dùng đến trang verify.jsp
        request.getRequestDispatcher("view/authen/verify.jsp").forward(request, response);
    }

    private String generateVerificationCode() {
        Random random = new Random();
        return String.format("%06d", random.nextInt(1000000));
    }

    public String Send(String user_email, String verificationCode) throws UnsupportedEncodingException {
        // Thông tin tài khoản email
        String username = "vuducduy0503@gmail.com";
        String password = "sytmibgyjiedsycb";

        // Cấu hình SMTP server và thông tin cổng
        String host = "smtp.gmail.com";
        int port = 587;

        // Cấu hình các thuộc tính kết nối
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);

        // Tạo đối tượng Session để xác thực truy cập SMTP server
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            // Tạo đối tượng MimeMessage
            MimeMessage message = new MimeMessage(session);

            // Thiết lập thông tin người gửi
            message.setFrom(new InternetAddress(username));

            // Thiết lập thông tin người nhận
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(user_email));

            // Thiết lập tiêu đề email
            message.setSubject("Account Verification FROM xxx Assignment");

            // Nội dung email
            String content = "<html>"
                    + "<body>"
                    + "<p>Your Verification Code: <strong>" + verificationCode + "</strong></p>"
                    + "<p>Please use this code to verify your account.</p>"
                    + "</body>"
                    + "</html>";

            // Thiết lập nội dung email dưới dạng HTML với encoding UTF-8
            message.setContent(content, "text/html; charset=UTF-8");

            // Gửi email
            Transport.send(message);
            return "Email has been sent successfully";
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return "Email sent failed ";
    }

}
