/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Domain Model
 * Description: JavaBean model representing student feedback.
 */
package com.javalab.model;

public class Feedback {

    private int id;
    private String studentName;
    private String course;
    private String feedbackText;
    private int rating;

    public Feedback() { }

    public Feedback(int id, String studentName, String course, String feedbackText, int rating) {
        this.id = id;
        this.studentName = studentName;
        this.course = course;
        this.feedbackText = feedbackText;
        this.rating = rating;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getStudentName() { return studentName; }
    public void setStudentName(String studentName) { this.studentName = studentName; }

    public String getCourse() { return course; }
    public void setCourse(String course) { this.course = course; }

    public String getFeedbackText() { return feedbackText; }
    public void setFeedbackText(String feedbackText) { this.feedbackText = feedbackText; }

    public int getRating() { return rating; }
    public void setRating(int rating) { this.rating = rating; }
}

