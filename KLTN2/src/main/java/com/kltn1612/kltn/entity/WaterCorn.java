package com.kltn1612.kltn.entity;

public class WaterCorn {
    private int id;
    private String name;
    public WaterCorn() {
    }
    public WaterCorn(int id, String name) {
        this.id = id;
        this.name = name;
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
}
