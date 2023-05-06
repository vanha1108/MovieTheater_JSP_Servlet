package com.kltn1612.kltn.entity;

public class WaterCornDetail {
    private int id;
    private String name;
    private String price;
    private int waterCornId;
    private String countCombo;
    public WaterCornDetail() {
    }

    public WaterCornDetail(int id, String name, String price, int waterCornId) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.waterCornId = waterCornId;
    }

    public WaterCornDetail(int id, String name, String price, int waterCornId, String countCombo) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.waterCornId = waterCornId;
        this.countCombo = countCombo;
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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public int getWaterCornId() {
        return waterCornId;
    }

    public void setWaterCornId(int waterCornId) {
        this.waterCornId = waterCornId;
    }

    public String getCountCombo() {
        return countCombo;
    }

    public void setCountCombo(String countCombo) {
        this.countCombo = countCombo;
    }
}
