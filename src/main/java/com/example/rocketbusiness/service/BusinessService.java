package com.example.rocketbusiness.service;

import com.example.rocketbusiness.db.RBRepository;
import com.example.rocketbusiness.model.Business;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class BusinessService {
    private RBRepository repository;

    public BusinessService(RBRepository repository) {
        this.repository = repository;
    }

    public Collection<Business> getBusiness() {
        return repository.getBusiness();
    }
}
