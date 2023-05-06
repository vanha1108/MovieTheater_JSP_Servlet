package com.kltn1612.kltn.entity;

public class PremiereDetail {
    private int id;
    private String countCombo;
    private int idCombo;

    public PremiereDetail() {
    }
    public PremiereDetail(String countCombo, int idCombo) {
        this.countCombo = countCombo;
        this.idCombo = idCombo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCountCombo() {
        return countCombo;
    }

    public void setCountCombo(String countCombo) {
        this.countCombo = countCombo;
    }

    public int getIdCombo() {
        return idCombo;
    }

    public void setIdCombo(int idCombo) {
        this.idCombo = idCombo;
    }
}
