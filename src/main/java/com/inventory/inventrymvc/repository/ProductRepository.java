package com.inventory.inventrymvc.repository;

import com.inventory.inventrymvc.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
}
