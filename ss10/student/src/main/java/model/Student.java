package model;

public class Student {
    private int id;
    private String name;
    private int gender;
    private double score;

    public Student() {
    }

    public Student(int id, String name, int gender, double score) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.score = score;
    }

    public Student(String name, int gender, double score) {
        this.name = name;
        this.gender = gender;
        this.score = score;
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

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }
}
