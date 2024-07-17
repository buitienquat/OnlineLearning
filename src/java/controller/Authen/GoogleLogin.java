/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.Authen;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import controller.constant.commonConstant;
import java.io.IOException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import controller.constant.commonConstant;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;
import Utility.Encryption;
import model.User;
import org.json.JSONObject;
import java.security.SecureRandom;
import java.util.Random;
/**
 *
 * @author Admin
 */
public class GoogleLogin {

    private static final String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    private static final int PASSWORD_LENGTH = 10;

    public static String getToken(String code) throws ClientProtocolException, IOException {
        // call api to get token
        String response = Request.Post(commonConstant.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", commonConstant.GOOGLE_CLIENT_ID)
                        .add("client_secret", commonConstant.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", commonConstant.GOOGLE_REDIRECT_URI)
                        .add("code", code)
                        .add("grant_type", commonConstant.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();

        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public static User getUserInfo(String accessToken) {
        User user = null;
        try {
            String link = commonConstant.GOOGLE_LINK_GET_USER_INFO + accessToken;
            URL url = new URL(link);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");

            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String inputLine;
            StringBuilder content = new StringBuilder();
            while ((inputLine = in.readLine()) != null) {
                content.append(inputLine);
            }

            // Close connections
            in.close();
            conn.disconnect();

            // Parse JSON response
            JSONObject json = new JSONObject(content.toString());
            String GmailID = json.getString("id");
            String Email = json.getString("email");
            String FullName = json.getString("name");
            String Image = json.getString("picture");

            user = new User();
            user.setGmailID(GmailID);
            user.setEmail(Email);
            user.setFullName(FullName);
            user.setImage(Image);
            user.setUsername(Email);
            user.setUserID(1);
            user.setRoleID(3);
            user.setPassword(Encryption.toSHA1(generateRandomPassword()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    private static String generateRandomPassword() {
        Random random = new SecureRandom();
        StringBuilder password = new StringBuilder(PASSWORD_LENGTH);
        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            password.append(CHARACTERS.charAt(random.nextInt(CHARACTERS.length())));
        }
        return password.toString();
    }
}
