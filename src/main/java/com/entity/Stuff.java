package com.entity;

import java.sql.Date;

public class Stuff {
    private int id;
    private String name;
    private Date birthday;
    private  int age;
    private String language;
    private String university;

    public Stuff() {
        super();
    }
    public Stuff(String name, Date birthday, int age, String language, String university) {
        super();
        this.name = name;
        this.birthday = birthday;
        this.age = age;
        this.language = language;
        this.university = university;
    }

    public Stuff(int id, String name, Date birthday, int age, String language, String university) {
        super();
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.age = age;
        this.language = language;
        this.university = university;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    @Override
    public String toString() {
        return "Stuff{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", birthday='" + birthday + '\'' +
                ", age=" + age +
                ", language='" + language + '\'' +
                ", university='" + university + '\'' +
                '}';
    }
}
