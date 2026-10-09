/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Domain Model
 * Description: JavaBean model representing student entity.
 */
package com.javalab.model;

public class Student {

    private int id;
    private String name;
    private String rollNumber;
    private int classId;
    private String className;

    public Student() { }

    public Student(int id, String name, String rollNumber, int classId, String className) {
        this.id = id;
        this.name = name;
        this.rollNumber = rollNumber;
        this.classId = classId;
        this.className = className;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getRollNumber() { return rollNumber; }
    public void setRollNumber(String rollNumber) { this.rollNumber = rollNumber; }

    public int getClassId() { return classId; }
    public void setClassId(int classId) { this.classId = classId; }

    public String getClassName() { return className; }
    public void setClassName(String className) { this.className = className; }
}

