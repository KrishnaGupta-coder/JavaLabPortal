/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Online Feedback System - Domain Model
 */
package com.javalab.model;

public class Feedback {

    private int id;
    private String studentName;
    private String course;
    private String facultyName;
    private String feedbackText;
    private int rating;
    private String submittedAt;

    public Feedback() { }

    public Feedback(int id, String studentName, String course, String facultyName, String feedbackText, int rating) {
        this.id = id;
        this.studentName = studentName;
        this.course = course;
        this.facultyName = facultyName;
        this.feedbackText = feedbackText;
        this.rating = rating;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getStudentName() { return studentName; }
    public void setStudentName(String studentName) { this.studentName = studentName; }

    public String getCourse() { return course; }
    public void setCourse(String course) { this.course = course; }

    public String getFacultyName() { return facultyName; }
    public void setFacultyName(String facultyName) { this.facultyName = facultyName; }

    public String getFeedbackText() { return feedbackText; }
    public void setFeedbackText(String feedbackText) { this.feedbackText = feedbackText; }

    public int getRating() { return rating; }
    public void setRating(int rating) { this.rating = rating; }

    public String getSubmittedAt() { return submittedAt; }
    public void setSubmittedAt(String submittedAt) { this.submittedAt = submittedAt; }
}
