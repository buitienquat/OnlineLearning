/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utility;

import java.security.MessageDigest;
import java.util.Random;
import org.apache.tomcat.util.codec.binary.Base64;

/**
 *
 * @author Admin
 */
public class Encryption {

    private static final String BASE_SALT_FIRST = "asjrlkmcoewj@tjle;oxqskjhdjksjf1jurVn";
    private static final String BASE_SALT_TAIL = "$3cUr3P@$$w0rd!#2024";

    //md5
    //sha-1 phần lớn các web đều dùng sha-1
    public static String toSHA1(String str) {
//        String baseSalt = "asjrlkmcoewj@tjle;oxqskjhdjksjf1jurVn";// Làm cho mật khẩu phức tap
//        String timeSalt = Long.toString(System.currentTimeMillis()); // Thêm thời gian hiện tại
//        String randomSalt = Integer.toString(new Random().nextInt(100000)); // Thêm số ngẫu nhiên
        String salt = BASE_SALT_FIRST;
        String salt1 = BASE_SALT_TAIL;
        String result = null;

        str =  salt + str + salt1;
        try {
            byte[] dataBytes = str.getBytes("UTF-8");    //mảng byte làm việc với kí tự
            // truyền vào bảng mã đang sử dụng
            MessageDigest md = MessageDigest.getInstance("SHA-1"); // truyền vào tên thuật toán
            result = Base64.encodeBase64URLSafeString(md.digest(dataBytes));//mã hoá dữ liệu dưới dạng base64
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public static void main(String[] args) {
        System.out.println(toSHA1("@A123456"));
    }
}
