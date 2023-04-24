package com.kltn1612.kltn.entity;

import java.util.Date;

public class Movie {
    private int id;
    private String name;
    private String image;
    private String trailer;
    private String description;
    private String releaseDate;
    private int duration;
    private int ageRetricted;
    private String actors;
    private String directors;
    private String theater;

    public Movie() {
    }

    public Movie(String name, String image, String trailer, String description, String releaseDate, int duration, int ageRetricted, String actors, String directors, String theater) {
        this.name = name;
        this.image = image;
        this.trailer = trailer;
        this.description = description;
        this.releaseDate = releaseDate;
        this.duration = duration;
        this.ageRetricted = ageRetricted;
        this.actors = actors;
        this.directors = directors;
        this.theater = theater;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public int getAgeRetricted() {
        return ageRetricted;
    }

    public void setAgeRetricted(int ageRetricted) {
        this.ageRetricted = ageRetricted;
    }

    public String getActors() {
        return actors;
    }

    public void setActors(String actors) {
        this.actors = actors;
    }

    public String getDirectors() {
        return directors;
    }

    public void setDirectors(String diretors) {
        this.directors = diretors;
    }
    public String getTheater() {
        return theater;
    }

    public void setTheater(String theater) {
        this.theater = theater;
    }
}
