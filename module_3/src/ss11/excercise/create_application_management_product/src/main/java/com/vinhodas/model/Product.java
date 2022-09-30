package com.vinhodas.model;

public class Product {
    private int id;
    private String nameProduct;
    private double priceProduct;
    private String productDescription;
    private String producer;

    public Product() {
    }

    public Product(int id, String nameProduct, double priceProduct, String productDescription, String producer) {
        this.id = id;
        this.nameProduct = nameProduct;
        this.priceProduct = priceProduct;
        this.productDescription = productDescription;
        this.producer = producer;
    }

    public int getId() {
        return id;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public double getPriceProduct() {
        return priceProduct;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public String getProducer() {
        return producer;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public void setPriceProduct(double priceProduct) {
        this.priceProduct = priceProduct;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

}
