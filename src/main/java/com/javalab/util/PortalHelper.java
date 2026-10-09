/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Utility & Resource Management
 * Description: Safe resource closing and input sanitization helpers.
 */
package com.javalab.util;

public class PortalHelper {

public static void safeClose(AutoCloseable... resources) {
        if (resources == null) return;
        for (AutoCloseable res : resources) {
            if (res != null) {
                try {
                    res.close();
                } catch (Exception ignored) {
                }
            }
        }
    }

public static String cleanInput(String input) {
        if (input == null) return "";
        return input.trim()
                    .replace("<", "&lt;")
                    .replace(">", "&gt;");
    }

public static boolean isValidRollNumber(String rollNumber) {
        if (rollNumber == null || rollNumber.trim().isEmpty()) {
            return false;
        }
        return rollNumber.trim().matches("^[0-9A-Za-z_-]{4,20}$");
    }
}

