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
import jakarta.websocket.Session;
import java.util.List;
import javax.management.remote.TargetedNotification;
import model.Category;
import model.Course;
import model.Page;

/**
 *
 * @author Admin
 */
public class courseController extends HttpServlet {

    CourseDAO courseDAO = new CourseDAO();
    CategoryDAO categoryDAO = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Page pageControl = new Page();
        List<Course> listCourse = findCourseDoGet(request, pageControl);
        List<Category> listCategory = categoryDAO.findAll();
        session.setAttribute(commonConstant.SESSION_COURSE, listCourse);
        session.setAttribute(commonConstant.SESSION_CATEGORY, listCategory);
        request.setAttribute(commonConstant.REQUEST_PAGE_CONTROL, pageControl);
        request.getRequestDispatcher("view/course/course.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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

    private List<Course> findCourseDoGet(HttpServletRequest request, Page pageControl) {
        //get ve page
        String pageRaw = request.getParameter("page");
        //valid page
        int page;
        try {
            page = Integer.parseInt(pageRaw);
            if (page <= 0) {
                page = 1;
            }
        } catch (Exception e) {
            page = 1;
        }
        String actionSearch = request.getParameter("action") == null
                ? "default" : request.getParameter("action");
        List<Course> listCourse = null;
        //get request url
        String requestURL = request.getRequestURL().toString();
        //total record
        int totalRecord = 0;
        switch (actionSearch) {
            case "searchByName":
                String searchName = request.getParameter("keyword");
                totalRecord = courseDAO.findTotalRecordByName(searchName);
                listCourse = courseDAO.findCourseByName(searchName, page);
                pageControl.setUrlPattern(requestURL + "?action=searchByName&keyword=" + searchName + "&");
                break;
            case "searchCategory":
                String categoryId = request.getParameter("categoryId");
                int cateId;
                try {
                    cateId = Integer.parseInt(categoryId);
                    if (cateId < 0) {
                        cateId = 1;
                    }
                    totalRecord = courseDAO.findTotalRecordByCategory(categoryId);
                    listCourse = courseDAO.findCourseByCategory(cateId, page);
                    pageControl.setUrlPattern(requestURL + "?action=searchCategory&categoryId=" + cateId + "&");
                } catch (Exception e) {
                    listCourse = courseDAO.findAll();
                }
                break;
            case "searchCategoryFree":
                String categoryIdFree = request.getParameter("categoryIdFree");
                int cateIdFree;
                try {
                    cateIdFree = Integer.parseInt(categoryIdFree);
                    if (cateIdFree < 0) {
                        cateIdFree = 1;
                    }
                    totalRecord = courseDAO.findTotalRecordByCategoryFree(categoryIdFree);
                    listCourse = courseDAO.findCourseByCategoryFree(cateIdFree, page);
                    pageControl.setUrlPattern(requestURL + "?action=earchCategoryFree&categoryIdFree=" + categoryIdFree + "&");
                } catch (Exception e) {
                    listCourse = courseDAO.findAll();
                }
                break;
            default:
                totalRecord = courseDAO.findTotalRecord();
                listCourse = courseDAO.findByPage(page);
                pageControl.setUrlPattern(requestURL + "?");
        }

        // total page
        int totalPage = (totalRecord % commonConstant.RECORD_PER_PAGE) == 0
                ? (totalRecord / commonConstant.RECORD_PER_PAGE)
                : (totalRecord / commonConstant.RECORD_PER_PAGE) + 1;
        //set total record, total page, page vao pageControl
        pageControl.setPage(page);
        pageControl.setTotalPage(totalPage);
        pageControl.setTotalRecord(totalRecord);
        return listCourse;
    }

}
