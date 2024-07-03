package Utility;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author hienhack
 */
public class Utility {
    public static String shortenText(String text, int length) {
        if (text != null && text.length() > length) {
            return text.substring(0, length) + "...";
        }
        return text;
    }
}
