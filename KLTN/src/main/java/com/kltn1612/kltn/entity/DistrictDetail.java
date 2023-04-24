package com.kltn1612.kltn.entity;

public class DistrictDetail {
    private int id;
    private String name;
    protected String prefix;
    private int provinceId;
    private String nameProvince;

    public DistrictDetail() {
    }

    public DistrictDetail(int id, String name, String prefix, int provinceId, String nameProvince) {
        this.id = id;
        this.name = name;
        this.prefix = prefix;
        this.provinceId = provinceId;
        this.nameProvince = nameProvince;
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

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    public int getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(int provinceId) {
        this.provinceId = provinceId;
    }

    public String getNameProvince() {
        return nameProvince;
    }

    public void setNameProvince(String nameProvince) {
        this.nameProvince = nameProvince;
    }
}
