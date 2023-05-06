package com.kltn1612.kltn.entity;

public class Comment {
    private int id;
    private int movieId;
    private int customerId;
    private String  star;
    private String comment;
    private String fullName;
    private String date;

    public Comment() {
    }

    public Comment(int movieId, int customerId, String star, String comment) {
        this.movieId = movieId;
        this.customerId = customerId;
        this.star = star;
        this.comment = comment;
    }

    public Comment(int movieId, int customerId, String star, String comment, String fullName, String date) {
        this.movieId = movieId;
        this.customerId = customerId;
        this.star = star;
        this.comment = comment;
        this.fullName = fullName;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getStar() {
        return star;
    }

    public void setStar(String star) {
        this.star = star;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

}
