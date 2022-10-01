package com.vinhodas.repository.impl;

import com.vinhodas.model.Product;
import com.vinhodas.repository.IProductRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepository implements IProductRepository {
    private static Map<Integer, Product> productMap;
    static {
        productMap = new HashMap<>();
        productMap.put(1,new Product(1,"Ca phe",100000,"ok","Trung Nguyen"));
        productMap.put(2,new Product(2,"sua",100000,"ok","emmy"));
        productMap.put(3,new Product(3,"coca",100000,"ok","cocain"));
        productMap.put(4,new Product(4,"Ca phe",100000,"ok","Trung Nguyen"));

    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id,product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);
    }

}
