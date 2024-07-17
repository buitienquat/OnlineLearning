/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.constant;

/**
 *
 * @author Admin
 */
public class commonConstant {
    public static final String SESSION_ACCOUNT = "account";
    public static final int RECORD_PER_PAGE_QUIZ = 5; // 1 trang quiz sẽ hiểu thị ra 2 question
    public static final int RECORD_PER_PAGE = 12; // 1 trang sẽ hiểu thị ra 12 sản phẩm
    public static final String SESSION_COURSE = "course";
    public static final String SESSION_CATEGORY = "category";
    public static final String REQUEST_FINDCOURSEID = "findCourseId";
    public static final String REQUEST_FINDCATEGORYID = "findCategoryId";
    public static final String REQUEST_FINDLESSON = "findLesson";
    public static final String REQUEST_PAGE_CONTROL = "pageControl";
    public static final String REQUEST_AUTO_FIRST_COURSE = "autoFirstCourse";
    public static final String REQUEST_TOTAL_RECORD_LESSON = "totalrecord";
    public static final String REQUEST_QUIZ = "quiztest";
    public static final String REQUEST_LISTQUESTION = "listquestion";
    public static final String REQUEST_LIST_ANSWER = "listanswer";
    
    // GOOGLE
    public static final String GOOGLE_CLIENT_ID ="10149831239-jp5a2uhorfqpaucmrejbpkk2rjnhrdqv.apps.googleusercontent.com";
    public static final String GOOGLE_CLIENT_SECRET ="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"; // phải bảo mật ;
    public static final String GOOGLE_REDIRECT_URI = "http://localhost:9999/OnlineLearning/authen?action=logingoogle" ;
    public static final String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token" ;
    public static final String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
    public static final String GOOGLE_GRANT_TYPE = "authorization_code";
}
