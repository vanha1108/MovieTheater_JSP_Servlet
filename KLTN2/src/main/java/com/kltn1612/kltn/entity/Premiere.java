package com.kltn1612.kltn.entity;

public class Premiere {
    private int id;
    private String total;
    private String ticketId;
    private String payment;
    private String seats;
    private int priceTicket;
    private String timeTicket;
    private String dateTicket;
    private String nameTheater;
    private String nameMovie;
    private int room;
    private int customerId;
    private int point;
    public Premiere() {
    }

    public Premiere(int id, String total, String ticketId, String payment) {
        this.id = id;
        this.total = total;
        this.ticketId = ticketId;
        this.payment = payment;
    }
    public Premiere(String total, String ticketId, String seats, int customerId) {
        this.total = total;
        this.ticketId = ticketId;
        this.seats = seats;
        this.customerId = customerId;
    }
    public Premiere(String total, String ticketId, String seats) {
        this.total = total;
        this.ticketId = ticketId;
        this.seats = seats;
    }
    public Premiere(int id, String total, String ticketId, String payment, String seats, int priceTicket, String timeTicket, String dateTicket, String nameTheater, String nameMovie, int room, int point) {
        this.id = id;
        this.total = total;
        this.ticketId = ticketId;
        this.payment = payment;
        this.seats = seats;
        this.priceTicket = priceTicket;
        this.timeTicket = timeTicket;
        this.dateTicket = dateTicket;
        this.nameTheater = nameTheater;
        this.nameMovie = nameMovie;
        this.room = room;
        this.point = point;
    }

    public int getId() {
        return id;
    }

    public String getSeats() {
        return seats;
    }

    public void setSeats(String seats) {
        this.seats = seats;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getTicketId() {
        return ticketId;
    }

    public void setTicketId(String ticketId) {
        this.ticketId = ticketId;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public int getPriceTicket() {
        return priceTicket;
    }

    public void setPriceTicket(int priceTicket) {
        this.priceTicket = priceTicket;
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

    public String getNameTheater() {
        return nameTheater;
    }

    public void setNameTheater(String nameTheater) {
        this.nameTheater = nameTheater;
    }

    public String getNameMovie() {
        return nameMovie;
    }

    public void setNameMovie(String nameMovie) {
        this.nameMovie = nameMovie;
    }

    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }
}
