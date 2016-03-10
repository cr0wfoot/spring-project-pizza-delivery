package com.pizza.delivery.repository;

import com.pizza.delivery.domain.entities.Customer;
import java.util.List;

public interface CustomerRepository {
    
    Long create(Customer customer);
    
    Customer read(Long id);
    
    Customer read(Long id, boolean fetchLazy);
    
    void update(Customer customer);
    
    List<Customer> readAll();
    
    void delete(Long id);
    
}