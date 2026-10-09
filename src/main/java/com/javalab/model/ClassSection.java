/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Domain Model
 * Description: JavaBean model representing class sections.
 */
package com.javalab.model;

public class ClassSection {

    private int id;
    private String className;

    public ClassSection() { }

    public ClassSection(int id, String className) {
        this.id = id;
        this.className = className;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getClassName() { return className; }
    public void setClassName(String className) { this.className = className; }
}

