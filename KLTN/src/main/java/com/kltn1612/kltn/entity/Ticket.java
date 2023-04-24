package com.kltn1612.kltn.entity;

public class Ticket {
    private int id;
    private int price;
    private int theater;
    private int movie;
    private String timeTicket;
    private String dateTicket;
    private int room;

    public Ticket() {
    }

    public Ticket(int price, int theater, int movie, String timeTicket, String dateTicket, int room) {
        this.price = price;
        this.theater = theater;
        this.movie = movie;
        this.timeTicket = timeTicket;
        this.dateTicket = dateTicket;
        this.room = room;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getTheater() {
        return theater;
    }

    public void setTheater(int theater) {
        this.theater = theater;
    }

    public int getMovie() {
        return movie;
    }

    public void setMovie(int movie) {
        this.movie = movie;
    }

    public String getTimeTicket() {
        return timeTicket;
    }

    public void setTimeTicket(String timeTicket) {
        this.timeTicket = timeTicket;
    }

    public String getDateTicket() {
        return dateTicket;
    }

    public void setDateTicket(String dateTicket) {
        this.dateTicket = dateTicket;
    }

    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }
}
