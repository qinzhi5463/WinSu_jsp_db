package com.stu.beans;

public class Student {
    private String studentNumber;
    private String studentName;
    private String studentSex;
    private String studentAge;
    private String studentWeight;

    public Student() {
    }

    public Student(String studentNumber, String studentName, String studentSex, String studentAge, String studentWeight) {
        this.studentNumber = studentNumber;
        this.studentName = studentName;
        this.studentSex = studentSex;
        this.studentAge = studentAge;
        this.studentWeight = studentWeight;
    }

    /**
     * 获取     * @return studentNumber
     */
    public String getStudentNumber() {
        return studentNumber;
    }

    /**
     * 设置     * @param studentNumber
     */
    public void setStudentNumber(String studentNumber) {
        this.studentNumber = studentNumber;
    }

    /**
     * 获取     * @return studentName
     */
    public String getStudentName() {
        return studentName;
    }

    /**
     * 设置     * @param studentName
     */
    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    /**
     * 获取     * @return studentSex
     */
    public String getStudentSex() {
        return studentSex;
    }

    /**
     * 设置     * @param studentSex
     */
    public void setStudentSex(String studentSex) {
        this.studentSex = studentSex;
    }

    /**
     * 获取     * @return studentAge
     */
    public String getStudentAge() {
        return studentAge;
    }

    /**
     * 设置     * @param studentAge
     */
    public void setStudentAge(String studentAge) {
        this.studentAge = studentAge;
    }

    /**
     * 获取     * @return studentWeight
     */
    public String getStudentWeight() {
        return studentWeight;
    }

    /**
     * 设置     * @param studentWeight
     */
    public void setStudentWeight(String studentWeight) {
        this.studentWeight = studentWeight;
    }

    public String toString() {
        return "Student{studentNumber = " + studentNumber + ", studentName = " +
                studentName + ", studentSex = " + studentSex + ", studentAge = " +
                studentAge + ", studentWeight = " + studentWeight + "}";
    }

}
