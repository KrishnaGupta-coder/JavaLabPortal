/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Experiment 5 - Employee Model
 */
package com.javalab.model;

public class Employee {
    private String empid;
    private String empname;
    private String empno;

    public Employee() {}

    public Employee(String empid, String empname, String empno) {
        this.empid = empid;
        this.empname = empname;
        this.empno = empno;
    }

    public String getEmpid() { return empid; }
    public void setEmpid(String empid) { this.empid = empid; }

    public String getEmpname() { return empname; }
    public void setEmpname(String empname) { this.empname = empname; }

    public String getEmpno() { return empno; }
    public void setEmpno(String empno) { this.empno = empno; }
}
