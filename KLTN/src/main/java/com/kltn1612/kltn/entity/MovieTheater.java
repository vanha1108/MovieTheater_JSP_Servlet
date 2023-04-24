package com.kltn1612.kltn.entity;

public class MovieTheater {
    private int movieId;
    private int theaterId;

    public MovieTheater(int movieId, int theaterId) {
        this.movieId = movieId;
        this.theaterId = theaterId;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public int getTheaterId() {
        return theaterId;
    }

    public void setTheaterId(int theaterId) {
        this.theaterId = theaterId;
    }
}
