package com.vinhodas.service;

import com.vinhodas.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> displayProduct();
    void save(Product product);

    Product findById(int id);

    void update(int id, Product product);

    void  remove(int id);


}
