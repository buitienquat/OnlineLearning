package controller.Admin;

import dal.CourseDB;
import dal.UserDBContext;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Course;
import model.User;

public class CourseList extends HttpServlet {

    private static final int DEFAULT_PAGE_SIZE = 10;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        UserDBContext dbContext = new UserDBContext();
        CourseDB coursedb = new CourseDB();
        List<Course> listCourse = coursedb.getAllCourse();
        String status = request.getParameter("status");

        if (status != null) {
            switch (status) {
                case "1":
                    listCourse = coursedb.getCoursebyStatuspage(1);
                    break;
                case "0":
                    listCourse = coursedb.getCoursebyStatuspage(0);
                    break;
                case "2":
                    listCourse = coursedb.getCoursebyStatuspage(2);
                    break;
                default:
                    response.getWriter().write("Unknown status");
                    break;
            }
        } else {
            listCourse = coursedb.getAllCourse();
            response.getWriter().write("Status parameter is missing");
        }

        String pageStr = request.getParameter("page");
        String pageSizeStr = request.getParameter("pageSize");
        int page = (pageStr == null || pageStr.isEmpty()) ? 1 : Integer.parseInt(pageStr);
        int pageSize = (pageSizeStr == null || pageSizeStr.isEmpty()) ? DEFAULT_PAGE_SIZE : Integer.parseInt(pageSizeStr);

        int start = (page - 1) * pageSize;
        int end = Math.min(start + pageSize, listCourse.size());

        List<Course> pageCourses = listCourse.subList(start, end);
        List<User> listUser = dbContext.getAllUser();
        int totalPages = (int) Math.ceil((double) listCourse.size() / pageSize);

        request.setAttribute("listUser", listUser);
        request.setAttribute("listCourse", pageCourses);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("pageSize", pageSize);
        request.setAttribute("status", status); // Add status to the request attributes

        request.getRequestDispatcher("view/admin/CourseList.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
