package com.kltn1612.kltn.entity;

public class TicketDetail {
    private int ticketId;
    private String ticketName;
    private int price;
    private int ticketTheater;
    private int ticketMovie;
    private int ticketCount;
    private String ticketTime;
    private String ticketDate;
    private String thearerName;
    private String movieName;
    private int room;

    public TicketDetail(int ticketId, String ticketName, int price, int ticketTheater, int ticketMovie, int ticketCount, String ticketTime, String ticketDate, String thearerName, String movieName, int room) {
        this.ticketId = ticketId;
        this.ticketName = ticketName;
        this.price = price;
        this.ticketTheater = ticketTheater;
        this.ticketMovie = ticketMovie;
        this.ticketCount = ticketCount;
        this.ticketTime = ticketTime;
        this.ticketDate = ticketDate;
        this.thearerName = thearerName;
        this.movieName = movieName;
        this.room = room;
    }
    public TicketDetail(){

    }

    public int getTicketId() {
        return ticketId;
    }

    public void setTicketId(int ticketId) {
        this.ticketId = ticketId;
    }

    public String getTicketName() {
        return ticketName;
    }

    public void setTicketName(String ticketName) {
        this.ticketName = ticketName;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getTicketTheater() {
        return ticketTheater;
    }

    public void setTicketTheater(int ticketTheater) {
        this.ticketTheater = ticketTheater;
    }

    public int getTicketMovie() {
        return ticketMovie;
    }

    public void setTicketMovie(int ticketMovie) {
        this.ticketMovie = ticketMovie;
    }

    public int getTicketCount() {
        return ticketCount;
    }

    public void setTicketCount(int ticketCount) {
        this.ticketCount = ticketCount;
    }

    public String getTicketTime() {
        return ticketTime;
    }

    public void setTicketTime(String ticketTime) {
        this.ticketTime = ticketTime;
    }

    public String getTicketDate() {
        return ticketDate;
    }

    public void setTicketDate(String ticketDate) {
        this.ticketDate = ticketDate;
    }

    public String getThearerName() {
        return thearerName;
    }

    public void setThearerName(String thearerName) {
        this.thearerName = thearerName;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }
}
