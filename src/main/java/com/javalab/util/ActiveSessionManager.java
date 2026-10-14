/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Security Layer - Concurrent Session Control
 * Description: Prevents simultaneous logins for the same student across different devices/browsers.
 */
package com.javalab.util;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class ActiveSessionManager {

    private static final Map<String, String> activeStudentSessions = new ConcurrentHashMap<>();
    private static final Map<String, Long> lastSeenTimes = new ConcurrentHashMap<>();

    /**
     * Checks if a student account is already active on another device/browser.
     */
    public static synchronized boolean isAlreadyLoggedIn(String rollNumber, String currentSessionId) {
        if (rollNumber == null || rollNumber.trim().isEmpty()) {
            return false;
        }

        String key = rollNumber.trim().toUpperCase();
        String existingSessionId = activeStudentSessions.get(key);

        if (existingSessionId != null && !existingSessionId.equals(currentSessionId)) {
            Long lastTime = lastSeenTimes.get(key);
            // If active within last 25 minutes, enforce exclusive session
            if (lastTime != null && (System.currentTimeMillis() - lastTime < 25 * 60 * 1000)) {
                return true;
            } else {
                // Expired session cleanup
                activeStudentSessions.remove(key);
                lastSeenTimes.remove(key);
            }
        }
        return false;
    }

    /**
     * Registers an active student session.
     */
    public static synchronized void registerLogin(String rollNumber, String sessionId) {
        if (rollNumber != null && !rollNumber.trim().isEmpty()) {
            String key = rollNumber.trim().toUpperCase();
            activeStudentSessions.put(key, sessionId);
            lastSeenTimes.put(key, System.currentTimeMillis());
        }
    }

    /**
     * Clears student session upon explicit logout.
     */
    public static synchronized void removeLogin(String rollNumber) {
        if (rollNumber != null) {
            String key = rollNumber.trim().toUpperCase();
            activeStudentSessions.remove(key);
            lastSeenTimes.remove(key);
        }
    }

    public static synchronized void touch(String rollNumber) {
        if (rollNumber != null) {
            String key = rollNumber.trim().toUpperCase();
            if (activeStudentSessions.containsKey(key)) {
                lastSeenTimes.put(key, System.currentTimeMillis());
            }
        }
    }
}
