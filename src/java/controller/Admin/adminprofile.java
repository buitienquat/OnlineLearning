package controller.Admin;

import Utility.Encryption;
import controller.constant.commonConstant;
import dal.implement.UserDBContext;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.nio.file.Paths;
import java.util.List;
import model.User;

@MultipartConfig
public class adminprofile extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute(commonConstant.SESSION_ACCOUNT);
        UserDBContext dbContext = new UserDBContext();
        List<User> listUser = dbContext.getUserbyUserId(user.getUserID());
        request.setAttribute("listUser", listUser);
        request.getRequestDispatcher("view/admin/Myprofile.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDBContext dbContext = new UserDBContext();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute(commonConstant.SESSION_ACCOUNT);
        int userId = user.getUserID();
        String imagePath = "";
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String fullname = request.getParameter("fullname");
        String dobStr = request.getParameter("dob");
        String address = request.getParameter("address");
        String newpassword = request.getParameter("newpassword");
        String btn = request.getParameter("changein4");

        // Chuyển đổi chuỗi ngày tháng sang đối tượng Date
         if (btn.equals("changein4")) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date dob = null;
        try {
            dob = sdf.parse(dobStr);
        } catch (ParseException e) {
            e.printStackTrace();
            // Xử lý lỗi chuyển đổi ngày tháng (nếu có)
        }

       
            Part filePart = request.getPart("userImage");
            if (filePart != null && filePart.getSize() > 0) {
                String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
                String uploadDir = getServletContext().getRealPath("/uploads");
                File uploadFile = new File(uploadDir, fileName);
                filePart.write(uploadFile.getAbsolutePath());
                imagePath = "uploads/" + fileName;
            }

            // Định dạng lại dob thành chuỗi
            String formattedDob = sdf.format(dob);

            // Cập nhật thông tin người dùng trong cơ sở dữ liệu
            dbContext.updateUserImage(userId, imagePath, email, phone, fullname, formattedDob, address);
            user.setImage(imagePath);
            user.setEmail(email);
            user.setPhone(phone);
            user.setFullName(fullname);
            user.setDob(dob);
            user.setAddress(address);
        }
        
        if (btn.equals("changepass")) {
            newpassword = Encryption.toSHA1(newpassword);
            dbContext.ChangePassword(userId, newpassword);
        }

        // Lấy thông tin người dùng mới từ cơ sở dữ liệu và cập nhật session
        User updatedUser = dbContext.getUserbyUserId(userId).get(0);
        session.setAttribute(commonConstant.SESSION_ACCOUNT, updatedUser);

        List<User> listUser = dbContext.getUserbyUserId(userId);
        request.setAttribute("listUser", listUser);
        request.getRequestDispatcher("view/admin/Myprofile.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
