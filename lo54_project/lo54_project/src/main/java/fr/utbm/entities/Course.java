/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.entities;

import java.io.Serializable;

/**
 *
 * @author kezraidi
 */
public class Course implements Serializable{

    private String codeCourse;
    private String title;

    public Course(String codeCourse, String title) {
        this.codeCourse = codeCourse;
        this.title = title;
    }

    public Course() {
    }

    public String getCodeCourse() {
        return codeCourse;
    }

    public void setCodeCourse(String codeCourse) {
        this.codeCourse = codeCourse;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
}
